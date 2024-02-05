import 'package:flutter/material.dart';

class PythonSyllabus extends StatefulWidget {
  const PythonSyllabus({super.key});

  @override
  State<PythonSyllabus> createState() => _PythonSyllabusState();
}

class _PythonSyllabusState extends State<PythonSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}
