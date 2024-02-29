import 'package:codex/pages/scorepage.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  List? quiz;
  QuizPage({super.key, this.quiz});

  @override
  State<QuizPage> createState() => _QuizPageState(quiz);
}

class _QuizPageState extends State<QuizPage> {
  List? quiz;
  _QuizPageState(this.quiz);
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      selectedAnsIndex = -1;
      _counter++;
      flag = 0;
    });
  }

  int flag = 0;
  int score = 0;
  int questionIndex = 0;
  int selectedAnsIndex = -1;
  int buttonIndex = 0;

  Color checkAnswer(int buttonIndex) {
    if (selectedAnsIndex != -1) {
      if (buttonIndex == selectedAnsIndex) {
        if (selectedAnsIndex == quiz![questionIndex]["correctAnswer"]) {
          if (flag == 1) {
            score++;
          }
          return Colors.green;
        } else {
          return Colors.red;
        }
      } else {
        if (buttonIndex == quiz![questionIndex]["correctAnswer"]) {
          return Colors.green;
        }
      }
    } else {
      return Colors.blue;
    }
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                "Questions ${quiz!.length}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Q${_counter + 1}. ${quiz![questionIndex]["questions"]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(checkAnswer(0)),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedAnsIndex = 0;
                      flag++;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    child: Center(
                        child: Text(
                      "A. ${quiz![questionIndex]["options"][0]}",
                      style: TextStyle(fontSize: 16),
                    )),
                  )),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(checkAnswer(1))),
                  onPressed: () {
                    setState(() {
                      selectedAnsIndex = 1;
                      flag++;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    child: Center(
                        child: Text(
                      "B. ${quiz![questionIndex]["options"][1]}",
                      style: TextStyle(fontSize: 16),
                    )),
                  )),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(checkAnswer(2))),
                  onPressed: () {
                    setState(() {
                      selectedAnsIndex = 2;
                      flag++;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    child: Center(
                        child: Text(
                      "C. ${quiz![questionIndex]["options"][2]}",
                      style: TextStyle(fontSize: 16),
                    )),
                  )),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(checkAnswer(3))),
                  onPressed: () {
                    setState(() {
                      selectedAnsIndex = 3;
                      flag++;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    child: Center(
                        child: Text(
                      "D. ${quiz![_counter]["options"][3]}",
                      style: TextStyle(fontSize: 16),
                    )),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          if (questionIndex == quiz!.length - 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ScorePage(score: score, outOf: quiz!.length),
                ));
          }

          if (questionIndex < quiz!.length - 1) {
            questionIndex++;
            _incrementCounter();
          }
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
