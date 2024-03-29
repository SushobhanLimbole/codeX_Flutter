import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';
import 'package:new_codex_app/pages/topicsscreen.dart';
// import 'package:new_codex_app/pages/homepage.dart';

class CodeScreen extends StatefulWidget {
  final List? data;
  final String? title;
  CodeScreen({super.key, this.data, this.title});

  @override
  State<CodeScreen> createState() => _CodeScreenState(title, data);
}

class _CodeScreenState extends State<CodeScreen> {
  List? data;
  String? title;
  _CodeScreenState(this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
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
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.only(top: 40, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Text('Java',
                              style: GoogleFonts.jost(
                                  color: const Color.fromRGBO(255, 252, 252, 1),
                                  fontSize: 45,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 10),
                          child: Text('Full Stack',
                              style: GoogleFonts.quicksand(
                                  color: const Color.fromRGBO(255, 252, 252, 1),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70, left: 10),
                    height: 140,
                    width: 140,
                    decoration: const BoxDecoration(
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
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  // height: MediaQuery.of(context).size.height - 240,
                  padding: const EdgeInsets.only(top: 12),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Center(
                              child: Text(
                            '$title',
                            style: GoogleFonts.anekTamil(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width - 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.circle, size: 12),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'What is Java?',
                                  style: GoogleFonts.anekTamil(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              // height: 40,
                              margin: const EdgeInsets.only(left: 17, top: 10),
                              child: const Text(
                                'bkd bdksd bkkdbsb bdskkb bksk bdsbds',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.circle, size: 12),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Java is Independent',
                                  style: GoogleFonts.anekTamil(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              // height: 40,
                              margin: const EdgeInsets.only(left: 17, top: 10),
                              child: const Text(
                                'bkd bdksd bkkdbsb bdskkb bksk bdsbds jvhjgv jjjd bddbsd dbsd ssdbs ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height - 482,
                        child: Center(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 40),
                            itemCount: data!.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: MediaQuery.of(context).size.width - 57,
                                margin: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Padding(
                                            padding: EdgeInsets.only(left: 27)),
                                        Text(
                                          'code ${index + 1}:',
                                          style: GoogleFonts.anekTamil(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      // height: 100,
                                      margin: const EdgeInsets.only(top: 20),
                                      width: MediaQuery.of(context).size.width -
                                          57,
                                      child: HighlightView(
                                        '${data![index]}',
                                        languageId: java.id,
                                        padding: EdgeInsets.all(10),
                                        theme: githubDarkDimmedTheme,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
