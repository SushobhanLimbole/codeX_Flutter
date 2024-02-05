import 'package:flutter/material.dart';

class DartSyllabus extends StatefulWidget {
  const DartSyllabus({super.key});

  @override
  State<DartSyllabus> createState() => _DartSyllabusState();
}

class _DartSyllabusState extends State<DartSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}