import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void increment_counter() {
    setState(() {
      count++;
    });
  }

  void reset_counter() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment and reset operation using buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: TextStyle(fontSize: 30),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increment_counter,
                  child: Text("Increment"),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                ElevatedButton(
                  onPressed: reset_counter,
                  child: Text("Reset"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
