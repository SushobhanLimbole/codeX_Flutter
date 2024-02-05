import 'package:flutter/material.dart';

class MySQLSyllabus extends StatefulWidget {
  const MySQLSyllabus({super.key});

  @override
  State<MySQLSyllabus> createState() => _MySQLSyllabusState();
}

class _MySQLSyllabusState extends State<MySQLSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My SQL Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}