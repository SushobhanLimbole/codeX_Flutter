import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Color.fromARGB(150, 205, 8, 201),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 60, 9, 229),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 5, 228, 90),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 234, 93, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
