import 'package:flutter/material.dart';

class FlutterSyllabus extends StatefulWidget {
  const FlutterSyllabus({super.key});

  @override
  State<FlutterSyllabus> createState() => _FlutterSyllabusState();
}

class _FlutterSyllabusState extends State<FlutterSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}