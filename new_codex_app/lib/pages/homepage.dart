import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_codex_app/pages/topicsscreen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  Widget title(
      {String? text,
      EdgeInsets margin =
          const EdgeInsets.only(left: 20, top: 30, bottom: 30)}) {
    return Container(
      margin: margin,
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
    return InkWell(
      // splashColor: Colors.white,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TopicsScreen(),
            ));
      },
      child: Container(
        // margin: EdgeInsets.only(left: 20),
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
        height: 180,
        width: 150,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(124, 132, 233, 0.8),
                  Color.fromRGBO(219, 19, 19, 0.8)
                ]),
            boxShadow: [
              const BoxShadow(
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
      ),
    );
  }

  Widget upcomingCoursesCard() {
    return InkWell(
      child: Center(
        child: Container(
          height: 170,
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(242, 141, 141, 1),
                  Color.fromRGBO(98, 21, 21, 1)
                ]),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 60,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 5),
                            child: Text(
                              '9th March 2024',
                              style: GoogleFonts.anekTamil(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 5),
                            child: Text(
                              '10am - 12am',
                              style: GoogleFonts.anekTamil(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(43, 137, 201, 1)),
                          child: Center(
                              child: Text(
                            'Join Demo',
                            style: GoogleFonts.anekTamil(color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Flutter app Development',
                        style: GoogleFonts.anekTamil(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
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
              decoration: const BoxDecoration(
                color: Color.fromRGBO(44, 55, 149, 0.67),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(120)),
              ),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 90,
                      margin: EdgeInsets.only(left: 20),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("images/profile.png"))),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 120,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Shubham',
                              style: GoogleFonts.jost(
                                fontSize: 40,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              )),
                          Text(
                            'Hope You are Fine',
                            style: GoogleFonts.quicksand(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 18),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          title(
              text: 'Courses For You',
              margin: const EdgeInsets.only(left: 20, top: 30, bottom: 20)),
          Container(
            height: 210,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => coursesCard(
                  text: "Java Full Stack", img: "images/java_full_stack.png"),
              padding: const EdgeInsets.only(right: 20),
              scrollDirection: Axis.horizontal,
            ),
          ),
          title(
              text: 'Upcoming Courses',
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 10)),
          Container(
            height: 190,
            margin: EdgeInsets.only(bottom: 30),
            child: ListView.builder(
              itemCount: 5,
              padding: const EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) => upcomingCoursesCard(),
            ),
          ),
        ],
      ),
    );
  }
}
