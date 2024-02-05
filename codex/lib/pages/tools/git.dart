import 'package:flutter/material.dart';

class GitSyllabus extends StatefulWidget {
  const GitSyllabus({super.key});

  @override
  State<GitSyllabus> createState() => _GitSyllabusState();
}

class _GitSyllabusState extends State<GitSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Git"),
        backgroundColor: Colors.black,
      ),
    );
  }
}