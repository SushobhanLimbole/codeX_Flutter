import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Color.fromARGB(150, 205, 8, 201),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 110,
                    color: Colors.black,
                  ),
                  Container(
                    height: 70,
                    width: 110,
                    color: Color.fromARGB(255, 248, 57, 4),
                  ),
                  Container(
                    height: 70,
                    width: 110,
                    color: Color.fromARGB(236, 237, 206, 6),
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
