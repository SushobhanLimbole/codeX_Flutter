import 'package:flutter/material.dart';

class ReactNativeSyllabus extends StatefulWidget {
  const ReactNativeSyllabus({super.key});

  @override
  State<ReactNativeSyllabus> createState() => _ReactNativeSyllabusState();
}

class _ReactNativeSyllabusState extends State<ReactNativeSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("React Native Syllabus"),
        backgroundColor: Colors.black,
      ),
    );
  }
}