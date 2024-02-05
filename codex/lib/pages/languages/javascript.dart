import 'package:flutter/material.dart';

class JsSyllabus extends StatefulWidget {
  const JsSyllabus({super.key});

  @override
  State<JsSyllabus> createState() => _JsSyllabusState();
}

class _JsSyllabusState extends State<JsSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JavaScript Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}
