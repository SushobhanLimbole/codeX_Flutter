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
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 252, 1, 126)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image: AssetImage("images/me.jpg"),
                                      fit: BoxFit.cover)),
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
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 252, 1, 126)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/varad-ingale.jpg"),
                                      fit: BoxFit.cover)),
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
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 252, 1, 126)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image: AssetImage("images/badal.jpg"),
                                      fit: BoxFit.cover)),
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
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 252, 1, 126)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/vedant-kumbhar.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "_vedant_kumbhar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 252, 1, 126)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image: AssetImage("images/pavan.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              "pavan_mali_0577",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 252, 1, 126)),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(38),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/atharv-jadhav.jpg"),
                                      fit: BoxFit.cover)),
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
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 252, 1, 126)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("images/me.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "limbolesushobhan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 174)),
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
                        image: AssetImage("images/my-photo.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 240)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
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
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 252, 1, 126)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("images/me.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "limbolesushobhan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 174)),
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
                        image: AssetImage("images/my-photo.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 240)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
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
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 252, 1, 126)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("images/pavan.jpg"),
                                fit: BoxFit.cover)),
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
                    Padding(padding: EdgeInsets.only(left: 174)),
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
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 240)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
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
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 252, 1, 126)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("images/me.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "limbolesushobhan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 174)),
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
                        image: AssetImage("images/my-photo.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 240)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
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
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Color.fromARGB(255, 252, 1, 126)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("images/me.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "limbolesushobhan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 174)),
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
                        image: AssetImage("images/my-photo.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.send_sharp,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 240)),
                    Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
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
