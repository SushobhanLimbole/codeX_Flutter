import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Color.fromARGB(150, 205, 8, 201),
      ),
      body: Container(
        height: 400,
        width: 400,
        color: const Color.fromARGB(255, 250, 2, 2),
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
