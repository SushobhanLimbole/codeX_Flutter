import 'package:flutter/material.dart';

class HibernateSyllabus extends StatefulWidget {
  const HibernateSyllabus({super.key});

  @override
  State<HibernateSyllabus> createState() => _HibernateSyllabusState();
}

class _HibernateSyllabusState extends State<HibernateSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hibernate Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}