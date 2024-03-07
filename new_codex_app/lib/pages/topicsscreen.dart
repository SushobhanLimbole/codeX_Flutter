import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_codex_app/pages/homepage.dart';

class TopicsScreen extends StatefulWidget {
  TopicsScreen({super.key});

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // color: Color.fromRGBO(44, 55, 149, 0.67),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(124, 132, 233, 0.8),
                Color.fromRGBO(219, 19, 19, 0.8)
              ])),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text('Java',
                                style: GoogleFonts.jost(
                                    color: Color.fromRGBO(255, 252, 252, 1),
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text('Full Stack',
                                style: GoogleFonts.quicksand(
                                    color: Color.fromRGBO(255, 252, 252, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                // Color.fromRGBO(194, 255, 197, 1),
                                Color.fromRGBO(62, 35, 232, 1),
                                Color.fromRGBO(0, 0, 0, 1)
                              ])),
                      child: Image.asset('images/java.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 550,
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                      child: ListView.builder(
                        padding: EdgeInsets.only(bottom: 50),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(2, 4),
                                        blurRadius: 4,
                                        color: Color.fromRGBO(0, 0, 0, 0.35))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(55),
                                      topLeft: Radius.circular(55))),
                              height: 110,
                              width: MediaQuery.of(context).size.width - 30,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    height: 80,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.black54,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Introduction to Java',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
