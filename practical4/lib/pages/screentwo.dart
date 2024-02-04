import 'package:flutter/material.dart';
import 'package:practical4/pages/screenthree.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Two")),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenThree()));
          },
          child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Tap!",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
