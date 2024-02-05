import 'package:flutter/material.dart';

class MongoDBSyllabus extends StatefulWidget {
  const MongoDBSyllabus({super.key});

  @override
  State<MongoDBSyllabus> createState() => _MongoDBSyllabusState();
}

class _MongoDBSyllabusState extends State<MongoDBSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mongoDB Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}