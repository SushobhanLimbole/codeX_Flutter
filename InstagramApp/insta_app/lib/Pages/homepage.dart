import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: "Schyler", fontSize: 23),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_sharp)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.chat_bubble_outline_rounded))
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 76,
                          width: 76,
                          //color: Color.fromARGB(229, 225, 41, 143),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: Color.fromARGB(255, 252, 1, 126)),
                            borderRadius: BorderRadius.circular(38),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.5, color: Colors.black),
                                borderRadius: BorderRadius.circular(38),
                                color: Color.fromARGB(255, 197, 22, 194)),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Ferrari/F8-Tributo/7945/1598599471404/front-left-side-47.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Container(
                          height: 18,
                          margin: EdgeInsets.only(top: 4),
                          child: Text(
                            "Your Story",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
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
