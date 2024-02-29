import 'package:codex/pages/codepage.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {
  final String? titleName;
  final List? data;
  const Syllabus({super.key, this.data, this.titleName});

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
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Codes(
                              titleName: data![index]["topic"],
                              code: data![index]["code"],
                              quiz: data![index]["quiz"],
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
                    "${data![index]["topic"]}",
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
