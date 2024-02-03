import 'package:flutter/material.dart';
import 'package:widget_list/widget_list/border_gradient.dart';
import 'package:widget_list/widget_list/navigation/screenone.dart';
//import 'package:widget_list/widget_list/name_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
