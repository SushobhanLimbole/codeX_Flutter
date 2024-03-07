import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  Widget title({String? text}) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 30, bottom: 30),
      child: Text(
        '$text',
        style: GoogleFonts.anekTamil(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget coursesCard({String? text, String? img}) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 180,
      width: 150,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(124, 132, 233, 0.8),
                Color.fromRGBO(219, 19, 19, 0.8)
              ]),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                color: Color.fromRGBO(0, 0, 0, 0.25))
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: 140,
              child: Center(
                child: Text(
                  "$text",
                  style: GoogleFonts.anekTamil(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Container(
            width: 140,
            child: Image.asset("$img"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(44, 55, 149, 0.67),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(120)),
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      width: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("images/profile.png"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Shubham',
                            style: GoogleFonts.jost(
                              fontSize: 40,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )),
                        Text(
                          'Hope You are Fine',
                          style: GoogleFonts.quicksand(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          title(text: 'Courses For You'),
          // ListView.builder(
          //   itemCount: cour,
          //   itemBuilder: (context, index) {

          // },)
          Row(
            children: [
              coursesCard(
                  text: "Java Full Stack", img: "images/java_full_stack.png"),
              coursesCard(text: "MERN Stack", img: "images/java_full_stack.png")
            ],
          )
        ],
      ),
    );
  }
}
