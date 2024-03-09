import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';
import 'package:new_codex_app/pages/topicsscreen.dart';
// import 'package:new_codex_app/pages/homepage.dart';

class CodeScreen extends StatefulWidget {
  CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<CodeScreen> {
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
                                  builder: (context) => TopicsScreen(),
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
                height: MediaQuery.of(context).size.height - 240,
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Center(
                            child: Text(
                          'Introduction to Java',
                          style: GoogleFonts.anekTamil(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width - 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.circle, size: 12),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'What is Java?',
                                style: GoogleFonts.anekTamil(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            // height: 40,
                            margin: EdgeInsets.only(left: 17, top: 10),
                            child: Text(
                              'bkd bdksd bkkdbsb bdskkb bksk bdsbds',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.circle, size: 12),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Java is Independent',
                                style: GoogleFonts.anekTamil(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            // height: 40,
                            margin: EdgeInsets.only(left: 17, top: 10),
                            child: Text(
                              'bkd bdksd bkkdbsb bdskkb bksk bdsbds jvhjgv jjjd bddbsd dbsd ssdbs ',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 482,
                      child: Center(
                        child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 40),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width - 57,
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'code 1:',
                                          style: GoogleFonts.anekTamil(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 100,
                                      width: MediaQuery.of(context).size.width -
                                          57,
                                      child: HighlightView(
                                        '''''',
                                        languageId: java.id,
                                        theme: githubDarkDimmedTheme,
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
                  ],
                ),
              )
            ],
          )),
    );
  }
}
