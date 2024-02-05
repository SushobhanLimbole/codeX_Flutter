import 'package:flutter/material.dart';

class VSCodeSyllabus extends StatefulWidget {
  const VSCodeSyllabus({super.key});

  @override
  State<VSCodeSyllabus> createState() => _VSCodeSyllabusState();
}

class _VSCodeSyllabusState extends State<VSCodeSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VS Code"),
        backgroundColor: Colors.black,
      ),
    );
  }
}