import 'package:flutter/material.dart';

class MariaDBSyllabus extends StatefulWidget {
  const MariaDBSyllabus({super.key});

  @override
  State<MariaDBSyllabus> createState() => _MariaDBSyllabusState();
}

class _MariaDBSyllabusState extends State<MariaDBSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mariaDB Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}