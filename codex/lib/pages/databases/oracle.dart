import 'package:flutter/material.dart';

class OracleSyllabus extends StatefulWidget {
  const OracleSyllabus({super.key});

  @override
  State<OracleSyllabus> createState() => _OracleSyllabusState();
}

class _OracleSyllabusState extends State<OracleSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oracle Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}