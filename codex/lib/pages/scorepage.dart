import 'package:codex/pages/homepage.dart';
import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  int? score;
  int? outOf;
  ScorePage({super.key, required this.score, required this.outOf});

  String result() {
    if (score! >= (outOf! * 0.5)) {
      return "Congratulations 💐💐 You are Passed !!";
    } else {
      return "Better Luck Next Time 👍";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Quiz"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Score : ${score} / ${outOf}",
                style: TextStyle(fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                result(),
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Text("Exit"),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
        },
      ),
    );
  }
}
