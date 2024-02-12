import 'package:codex/pages/codepage.dart';
import 'package:codex/pages/javaCodes.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {
  final String? titleName;
  final List<String> topics;
  final List? code;
  const Syllabus(
      {super.key, required this.topics,  this.code, this.titleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$titleName"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: topics.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => javaCodes[index]));
              },
              child: Container(
                height: 100,
                width: 100,
                child: Center(
                  child: Text("${topics[index]}"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
