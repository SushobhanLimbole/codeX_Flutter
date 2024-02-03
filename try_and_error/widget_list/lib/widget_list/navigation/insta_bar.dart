import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
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
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/sukuna.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "limbolesushobhan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 224,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            print("icon pressed");
                          },
                          icon: Icon(Icons.ac_unit_rounded))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column prac(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 90,
              width: 90,
              color: Colors.white,
            ),
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              "limbolesushobhan",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 228,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
