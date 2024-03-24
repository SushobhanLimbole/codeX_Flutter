import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(34, 36, 39, 1),
              Color.fromRGBO(17, 98, 250, 1)
            ])),
        child: Column(children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Your Bike',
                  style: TextStyle(color: Colors.white),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromRGBO(52, 200, 232, 1),
                        Color.fromRGBO(78, 74, 242, 1)
                      ])),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.search_sharp)),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2))),
          ),
          Row(
            children: [
              Container(child: IconButton(onPressed: () {}, icon: Text('All'))),
              
              ],
          )
        ]),
      ),
    );
  }
}
