import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: SizedBox(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 50,
          width: 50,
          color: Colors.red,
          child: Text("Hello"),
        ),
      ),
    );
  }
}
