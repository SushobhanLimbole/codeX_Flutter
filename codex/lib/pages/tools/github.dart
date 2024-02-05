import 'package:flutter/material.dart';

class GithubSyllabus extends StatefulWidget {
  const GithubSyllabus({super.key});

  @override
  State<GithubSyllabus> createState() => _GithubSyllabusState();
}

class _GithubSyllabusState extends State<GithubSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github"),
        backgroundColor: Colors.black,
      ),
    );
  }
}