import 'package:codex/pages/codepage.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {
  final String? titleName;
  final List<String> topics;
  final List? code;
  const Syllabus({super.key, required this.topics, this.code, this.titleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$titleName"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          itemCount: topics.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Codes(
                              titleName: topics[index],
                              code: code![index],
                            )));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black,
                ),
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "${topics[index]}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
