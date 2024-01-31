import 'package:flutter/material.dart';

class Widget_List extends StatefulWidget {
  const Widget_List({super.key});

  @override
  State<Widget_List> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Widget_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 78,
              width: 78,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.yellow,
                      Colors.amber,
                      Color.fromARGB(255, 255, 119, 0),
                      Color.fromARGB(255, 244, 44, 13),
                      Color.fromARGB(235, 233, 30, 98),
                      Colors.purple,
                      Colors.purple,
                    ]),
                borderRadius: BorderRadius.circular(38),
              ),
              child: Center(
                child: Container(
                  height: 73,
                  width: 73,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(36),
                      image: DecorationImage(
                          image: AssetImage("images/sukuna.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
