import 'package:flutter/material.dart';

class PostmanSyllabus extends StatefulWidget {
  const PostmanSyllabus({super.key});

  @override
  State<PostmanSyllabus> createState() => _PostmanSyllabusState();
}

class _PostmanSyllabusState extends State<PostmanSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postman"),
        backgroundColor: Colors.black,
      ),
    );
  }
}