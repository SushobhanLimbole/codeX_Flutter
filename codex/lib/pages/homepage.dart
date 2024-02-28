import 'package:codex/pages/codes.dart';
// import 'package:codex/pages/javaCodes.dart';
import 'package:codex/pages/syllabuspage.dart';
import 'package:codex/pages/databases/mariaDB.dart';
import 'package:codex/pages/databases/mongDB.dart';
import 'package:codex/pages/databases/mysql.dart';
import 'package:codex/pages/databases/oracle.dart';
import 'package:codex/pages/frameworks/flutterpage.dart';
import 'package:codex/pages/frameworks/hibernate.dart';
import 'package:codex/pages/frameworks/reactnative.dart';
import 'package:codex/pages/frameworks/spring.dart';
import 'package:codex/pages/languages/dartpage.dart';
// import 'package:codex/pages/languages/javapage.dart';
import 'package:codex/pages/languages/javascript.dart';
import 'package:codex/pages/languages/pythonpage.dart';
import 'package:codex/pages/tools/eclipse.dart';
import 'package:codex/pages/tools/git.dart';
import 'package:codex/pages/tools/github.dart';
import 'package:codex/pages/tools/postman.dart';
import 'package:codex/pages/tools/vscode.dart';
import 'package:flutter/material.dart';
import 'topics.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Just pass a String to give a title bar above the logos
  Widget TitleBar({String? name}) {
    return Container(
      height: 60,
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(left: 25),
          child: Text(
            "$name",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }

  Widget LanguageWidgets() {
    return Container(
      height: 235,
      child: CarouselSlider(
          items: [
            Logo(
              "images/Java.jpeg",
              Syllabus(
                topics: java,
                code: javaCode,
                titleName: "Java",
              ),
              // edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/Dart-logo.png", DartSyllabus()),
            Logo("images/Python-logo.png", PythonSyllabus()),
            Logo(
              "images/js-logo.png",
              JsSyllabus(),
              // edgeInsetsMargin: EdgeInsets.only(left: 40, right: 40),
            )
          ],
          options: CarouselOptions(
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.decelerate,
              viewportFraction: 0.5,
              enlargeFactor: 0.4,
              initialPage: 0,
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayInterval: Duration(seconds: 2))),
    );
  }

  Widget FrameWorkWidgets() {
    return Container(
      height: 235,
      child: CarouselSlider(
        items: [
          Logo(
            "images/flutter-logo.png",
            FlutterSyllabus(),
            edgeInsetsMargin: EdgeInsets.only(),
          ),
          Logo("images/spring-logo.png", SpringSyllabus()),
          Logo("images/hibernate-logo.png", HibernateSyllabus()),
          Logo(
            "images/react-native-logo.png",
            ReactNativeSyllabus(),
            edgeInsetsMargin: EdgeInsets.only(),
          )
        ],
        options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.decelerate,
            viewportFraction: 0.5,
            enlargeFactor: 0.4,
            initialPage: 0,
            reverse: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayInterval: Duration(seconds: 2)),
      ),
    );
  }

  Widget DBWidgets() {
    return Container(
        height: 235,
        child: CarouselSlider(
          items: [
            Logo(
              "images/mysql-img.png",
              MySQLSyllabus(),
              // edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/mongodb.png", MongoDBSyllabus()),
            Logo("images/oracle.png", OracleSyllabus()),
            Logo(
              "images/maria.png",
              MariaDBSyllabus(),
              // edgeInsetsMargin: EdgeInsets.only(left: 40, right: 40),
            )
          ],
          options: CarouselOptions(
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.decelerate,
              viewportFraction: 0.5,
              enlargeFactor: 0.4,
              initialPage: 0,
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayInterval: Duration(seconds: 2)),
        ));
  }

  Widget ToolsWidgets() {
    return Container(
        height: 235,
        child: CarouselSlider(
          items: [
            Logo(
              "images/vs-logo.png",
              VSCodeSyllabus(),
              // edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/eclipse.png", EclipseSyllabus()),
            Logo("images/git-img.png", GitSyllabus()),
            Logo("images/github.png", GithubSyllabus()),
            Logo(
              "images/postman.png",
              PostmanSyllabus(),
              // edgeInsetsMargin: EdgeInsets.only(left: 40, right: 40),
            )
          ],
          options: CarouselOptions(
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.decelerate,
              viewportFraction: 0.5,
              enlargeFactor: 0.4,
              initialPage: 0,
              reverse: true,
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayInterval: Duration(seconds: 2)),
        ));
  }

  Widget Logo(String logo, Widget routePage,
      {EdgeInsets edgeInsetsMargin = const EdgeInsets.only()}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => routePage));
      },
      child: Center(
        child: Container(
          height: 150,
          width: 150,
          margin: edgeInsetsMargin,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(0, 15),
                    spreadRadius: 4,
                    blurRadius: 16),
              ],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("$logo"),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle_rounded),
        ),
        title: Text(
          "codeX",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: SizedBox(
        child: ListView(children: [
          SizedBox(height: 10),
          //Languages
          TitleBar(name: "Languages"),
          //Logos
          LanguageWidgets(),
          //FrameWorks
          TitleBar(name: "Frameworks"),
          //Logos
          FrameWorkWidgets(),
          //Databases
          TitleBar(name: "Databases"),
          //Logos
          DBWidgets(),
          //Tools
          TitleBar(name: "Tools"),
          //Logos
          ToolsWidgets(),

          Row(
            children: [
              Container(
                height: 50,
              ),
            ],
          ),
        ]),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   height: 60,
      // ),
    );
  }
}
