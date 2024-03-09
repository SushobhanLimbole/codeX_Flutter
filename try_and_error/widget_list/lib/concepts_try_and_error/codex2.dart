import 'package:flutter/material.dart';

class Codex2 extends StatefulWidget {
  const Codex2({super.key});

  @override
  State<Codex2> createState() => _Codex2State();
}

class _Codex2State extends State<Codex2> {
  Widget card() {
    return Container(
      height: 200,
      width: 150,
      margin: const EdgeInsets.only(left: 20),
      decoration: const BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                    ),
                    Container(
                      height: 90,
                      child: const Column(
                        children: [
                          Text(
                            'Hi, Shubham',
                            style: TextStyle(fontSize: 40),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text(
                            'Hope you are fine',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
              child: const Text(
                "Courses For You",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 20,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => card(),
                padding: const EdgeInsets.only(right: 20),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
              child: const Text(
                "Upcoming Courses",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    color: Colors.brown,
                    margin: const EdgeInsets.all(20),
                  );
                },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30))
          ],
        ),
      ),
    );
  }
}
