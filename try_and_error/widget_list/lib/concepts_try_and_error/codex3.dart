import 'package:flutter/material.dart';

class Codex3 extends StatefulWidget {
  const Codex3({super.key});

  @override
  State<Codex3> createState() => _Codex3State();
}

class _Codex3State extends State<Codex3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Java',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      'Full Stack',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.longestSide - 100,
            padding: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black54, shape: BoxShape.circle),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text('Introduction to Java'),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
