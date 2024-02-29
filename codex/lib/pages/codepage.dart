import 'package:codex/pages/quizpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark.dart';
import 'package:highlighting/languages/java.dart';

// import 'pack.dart';

class Codes extends StatelessWidget {
  final String? titleName;
  final List? code;
  final List? quiz;
  const Codes({super.key, this.titleName, this.code, this.quiz});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$titleName"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: code!.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Program ${index + 1}:"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: HighlightView(
                  "${code![index]}",
                  padding: EdgeInsets.all(10),
                  tabSize: 2,
                  languageId: java.id,
                  theme: githubDarkTheme,
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuizPage(
                        quiz: quiz,
                      )));
        },
        child: Text("Quiz"),
      ),
    );
  }
}
