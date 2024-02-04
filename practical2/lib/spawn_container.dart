import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void update() {
    setState(() {
      count++;
    });
  }

  Widget container1() {
    if (count >= 1) {
      return Container(
        height: 100,
        width: 100,
        color: Colors.red,
      );
    }
    return Container();
  }

  Widget container2() {
    if (count >= 2) {
      return Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        width: 100,
        color: Colors.blue,
      );
    }
    return Container();
  }

  Widget container3() {
    if (count >= 3) {
      return Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        width: 100,
        color: Colors.purpleAccent[400],
      );
    }
    return Container();
  }

  Widget container4() {
    if (count >= 4) {
      return Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        width: 100,
        color: Colors.orangeAccent[400],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Spawn Containers Through button"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              container1(),
              container2(),
              container3(),
              container4(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: update,
          child: Icon(Icons.add),
        ));
  }
}
