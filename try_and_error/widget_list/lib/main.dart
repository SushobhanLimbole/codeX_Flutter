import 'package:flutter/material.dart';
import 'package:widget_list/widget_list/boreder_gradient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Widget_List(),
      debugShowCheckedModeBanner: false,
    );
  }
}
