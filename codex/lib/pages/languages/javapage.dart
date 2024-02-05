import 'package:flutter/material.dart';

class JavaSyllabus extends StatefulWidget {
  const JavaSyllabus({super.key});

  @override
  State<JavaSyllabus> createState() => _JavaSyllabusState();
}

class _JavaSyllabusState extends State<JavaSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}
