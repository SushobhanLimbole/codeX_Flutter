import 'package:flutter/material.dart';
import 'package:widget_list/concepts_try_and_error/codex1.dart';
import 'package:widget_list/concepts_try_and_error/codex2.dart';
import 'package:widget_list/concepts_try_and_error/codex3.dart';
// import 'package:widget_list/concepts_try_and_error/new.dart';
//import 'package:widget_list/widget_list/navigation/insta_bar.dart';
//import 'package:widget_list/widget_list/border_gradient.dart';
//import 'package:widget_list/widget_list/navigation/screenone.dart';
// import 'package:widget_list/widget_list/navigation/screentwo.dart';
// import 'package:widget_list/widget_list/navigation/syllabus.dart';
// import 'package:widget_list/widget_list/navigation/topics.dart';
//import 'package:widget_list/widget_list/name_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Codex2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
