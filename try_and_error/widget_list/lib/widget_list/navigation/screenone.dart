import 'package:flutter/material.dart';
import 'package:widget_list/widget_list/navigation/screentwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreeStatenOne();
}

class _ScreeStatenOne extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ScreenTwo()));
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.pink.shade800,
          ),
        ),
      ),
    );
  }
}
