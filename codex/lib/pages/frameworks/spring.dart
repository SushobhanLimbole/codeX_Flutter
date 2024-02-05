import 'package:flutter/material.dart';

class SpringSyllabus extends StatefulWidget {
  const SpringSyllabus({super.key});

  @override
  State<SpringSyllabus> createState() => _SpringSyllabusState();
}

class _SpringSyllabusState extends State<SpringSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spring Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}
