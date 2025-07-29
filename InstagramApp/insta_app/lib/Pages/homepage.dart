import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool fav1 = false;
  bool fav2 = false;
  bool fav3 = false;
  bool fav4 = false;
  bool fav5 = false;

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                        image: AssetImage("images/me.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "Your Story",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                        image: AssetImage(
                                            "images/varad-ingale.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "varad_ingale34",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                        image: AssetImage("images/badal.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "badal_lad",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                        image: AssetImage(
                                            "images/vedant-kumbhar.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "_vedant_kumb..",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                        image: AssetImage("images/pavan.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "pavan_mali_.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                        image: AssetImage(
                                            "images/atharv-jadhav.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "_a_t_h_a_r_v__07",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.white12,
              ),
              Container(
                height: 42,
                margin: EdgeInsets.only(top: 4, bottom: 5),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 36,
                      width: 36,
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
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.5,
                                color: Colors.black,
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("images/me.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Text(
                      "limbolesushobhan",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                    )),
                    Container(
                      // width: MediaQuery.of(context).size.width - 175,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                print("icon pressed");
                              },
                              icon: Icon(
                                Icons.more_vert_sharp,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/my-photo.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            fav1 = !fav1;
                          });
                        },
                        icon: fav1
                            ? Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline_sharp,
                                color: Colors.white,
                              )),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 230)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "57 likes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "limbolesushobhan ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "codeX Flutter first batch :)",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "View Comments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "varad_ingale34 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "memorable day",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "_sahil_k18_ ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "28 Jan 2024",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
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
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/varad-ingale.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "varad_ingale34",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(left: 176)),
                    Expanded(
                        child: Container(
                      height: 1,
                    )),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/varad-photo.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            fav2 = !fav2;
                          });
                        },
                        icon: fav2
                            ? Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline_sharp,
                                color: Colors.white,
                              )),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 230)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "125 likes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "varad_ingale34 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Happiness is a choice ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "View Comments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "limbolesushobhan ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "coding buddy",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "2 Jan 2024",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
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
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/pavan.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "pavan_mali_0577",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(left: 162)),
                    Expanded(
                        child: Container(
                      height: 1,
                    )),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/pavan.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            fav3 = !fav3;
                          });
                        },
                        icon: fav3
                            ? Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline_sharp,
                                color: Colors.white,
                              )),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 230)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "157 likes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "pavan_mali_0577 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Traditional Day Special ;)",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "View Comments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "limbolesushobhan ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "30 May 2023",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
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
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/natgeo.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "natgeo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(left: 230)),
                    Expanded(
                        child: Container(
                      height: 1,
                    )),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/natgeo-ermine.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            fav4 = !fav4;
                          });
                        },
                        icon: fav4
                            ? Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline_sharp,
                                color: Colors.white,
                              )),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 230)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "20,057 likes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "natgeo ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "An ermine is a small, white weasel that is ....",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "View Comments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "26 Jan 2024",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
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
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/atharv-jadhav.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "_a_t_h_a_r_v__07",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only(left: 161)),
                    Expanded(
                        child: Container(
                      height: 1,
                    )),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/atharv-tengen.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            fav5 = !fav5;
                          });
                        },
                        icon: fav5
                            ? Icon(
                                Icons.favorite_outlined,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline_sharp,
                                color: Colors.white,
                              )),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 230)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "102 likes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "_a_t_h_a_r_v__07 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Uzui Tengen fight as always killer...",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "View Comments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 25)),
                          Text(
                            "limbolesushobhan ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "tengen vs gytoru fight",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10, top: 15)),
                          Text(
                            "5 Jan 2024",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
