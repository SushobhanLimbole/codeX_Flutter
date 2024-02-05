import 'package:flutter/material.dart';

class EclipseSyllabus extends StatefulWidget {
  const EclipseSyllabus({super.key});

  @override
  State<EclipseSyllabus> createState() => _EclipseSyllabusState();
}

class _EclipseSyllabusState extends State<EclipseSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eclipse"),
        backgroundColor: Colors.black,
      ),
    );
  }
}