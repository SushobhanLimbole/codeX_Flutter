import 'package:flutter/material.dart';

class BorderGradient extends StatefulWidget {
  const BorderGradient({super.key});

  @override
  State<BorderGradient> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BorderGradient> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Center(
            // child: TextButton(
            //   onPressed: () {
            //     setState(() {
            //       change = !change;
            //     });
            //   },
            child: InkResponse(
              splashColor: Colors.black,
              onTap: () {
                setState(() {
                  change = !change;
                });
              },
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
                  shape: BoxShape.circle,
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
                    //),
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 200)),
          Text(
            "hello",
            style: TextStyle(
                fontSize: 25, color: change ? Colors.red : Colors.black),
          )
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
