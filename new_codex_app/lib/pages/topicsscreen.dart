import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_codex_app/pages/codepage.dart';
import 'package:new_codex_app/pages/homepage.dart';

class TopicsScreen extends StatefulWidget {
  final List? data;
  final String? title;
  TopicsScreen({super.key, this.data, this.title});

  @override
  State<TopicsScreen> createState() => _TopicsScreenState(data, title);
}

class _TopicsScreenState extends State<TopicsScreen> {
  List? data;
  String? title;
  _TopicsScreenState(this.data, this.title);
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
                    margin: const EdgeInsets.only(top: 40, left: 5),
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
                          margin: const EdgeInsets.only(left: 30),
                          child: Text('Full Stack',
                              style: GoogleFonts.quicksand(
                                  color: const Color.fromRGBO(255, 252, 252, 1),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70),
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
              Container(
                height: 535,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                margin: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 30),
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CodeScreen(
                                  title: data![index]["topic"], data: data![index]["code"]),
                            ));
                      },
                      child: Container(
                        height: 110,
                        margin:
                            const EdgeInsets.only(top: 20, left: 15, right: 15),
                        decoration: const BoxDecoration(
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
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 90,
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                '${data![index]["topic"]}',
                                style: const TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
