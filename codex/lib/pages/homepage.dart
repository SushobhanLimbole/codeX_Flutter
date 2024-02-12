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
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }

  Widget LanguageWidgets() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            Logo(
              "images/Java.jpeg",
              Syllabus(
                topics: java,
                code: javaCode,
                titleName: "Java",
              ),
              edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/Dart-logo.png", DartSyllabus()),
            Logo("images/Python-logo.png", PythonSyllabus()),
            Logo(
              "images/js-logo.png",
              JsSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 30, right: 40),
            )
          ],
        ),
      ),
    );
  }

  Widget FrameWorkWidgets() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            Logo(
              "images/flutter-logo.png",
              FlutterSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/spring-logo.png", SpringSyllabus()),
            Logo("images/hibernate-logo.png", HibernateSyllabus()),
            Logo(
              "images/react-native-logo.png",
              ReactNativeSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 30, right: 40),
            )
          ],
        ),
      ),
    );
  }

  Widget DBWidgets() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            Logo(
              "images/mysql-img.png",
              MySQLSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/mongodb.png", MongoDBSyllabus()),
            Logo("images/oracle.png", OracleSyllabus()),
            Logo(
              "images/maria.png",
              MariaDBSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 30, right: 40),
            )
          ],
        ),
      ),
    );
  }

  Widget ToolsWidgets() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            Logo(
              "images/vs-logo.png",
              VSCodeSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 40),
            ),
            Logo("images/eclipse.png", EclipseSyllabus()),
            Logo("images/git-img.png", GitSyllabus()),
            Logo("images/github.png", GithubSyllabus()),
            Logo(
              "images/postman.png",
              PostmanSyllabus(),
              edgeInsetsMargin: EdgeInsets.only(left: 30, right: 40),
            )
          ],
        ),
      ),
    );
  }

  Widget Logo(String logo, Widget routePage,
      {EdgeInsets edgeInsetsMargin = const EdgeInsets.only(left: 30)}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => routePage));
      },
      child: Container(
        height: 120,
        width: 120,
        margin: edgeInsetsMargin,
        decoration: BoxDecoration(
            // border: Border.all(
            //     color: Colors.black, width: 1, style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(156, 10, 10, 10),
                  // offset: Offset(2, 1),
                  blurRadius: 8),
            ],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("$logo"),
              fit: BoxFit.cover,
            )),
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
