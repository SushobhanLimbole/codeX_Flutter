import 'package:flutter/material.dart';
// import 'package:practical1/firstpage.dart';
// import 'package:practical1/secondpage.dart';
import 'package:practical1/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: ScreenThree());
  }
}
