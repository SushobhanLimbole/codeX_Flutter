import 'package:flutter/material.dart';
import 'package:quiz_app/score.dart';
import 'questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      selectedAnsIndex = -1;
      _counter++;
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
        if (selectedAnsIndex == questions[questionIndex]["answer"]) {
          if (flag == 1) {
            score++;
          }
          return Colors.green;
        } else {
          return Colors.red;
        }
      } else {
        if (buttonIndex == questions[questionIndex]["answer"]) {
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
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                "Questions ${questions.length}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Q${_counter + 1}. ${questions[questionIndex]["question"]}",
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
                      "A. ${questions[questionIndex]["options"][0]}",
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
                      "B. ${questions[questionIndex]["options"][1]}",
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
                      "C. ${questions[questionIndex]["options"][2]}",
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
                      "D. ${questions[_counter]["options"][3]}",
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
          if (questionIndex == questions.length - 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ScorePage(score: score, outOf: questions.length),
                ));
          }

          if (questionIndex < questions.length - 1) {
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
