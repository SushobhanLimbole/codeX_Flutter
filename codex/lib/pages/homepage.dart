import 'package:codex/pages/databases/mariaDB.dart';
import 'package:codex/pages/databases/mongDB.dart';
import 'package:codex/pages/databases/mysql.dart';
import 'package:codex/pages/databases/oracle.dart';
import 'package:codex/pages/frameworks/flutterpage.dart';
import 'package:codex/pages/frameworks/hibernate.dart';
import 'package:codex/pages/frameworks/reactnative.dart';
import 'package:codex/pages/frameworks/spring.dart';
import 'package:codex/pages/languages/dartpage.dart';
import 'package:codex/pages/languages/javapage.dart';
import 'package:codex/pages/languages/javascript.dart';
import 'package:codex/pages/languages/pythonpage.dart';
import 'package:codex/pages/tools/eclipse.dart';
import 'package:codex/pages/tools/git.dart';
import 'package:codex/pages/tools/github.dart';
import 'package:codex/pages/tools/postman.dart';
import 'package:codex/pages/tools/vscode.dart';
import 'package:flutter/material.dart';

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

  Widget LanguageWidgets({String? startLogo, String? endLogo}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            StartLogo(logo: startLogo, routePage: JavaSyllabus()),
            BetweenLogo(
                logo: "images/Dart-logo.png", routePage: DartSyllabus()),
            BetweenLogo(
                logo: "images/Python-logo.png", routePage: PythonSyllabus()),
            EndLogo(logo: endLogo, routePage: JsSyllabus())
          ],
        ),
      ),
    );
  }

  Widget FrameWorkWidgets({String? startLogo, String? endLogo}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            StartLogo(logo: startLogo, routePage: FlutterSyllabus()),
            BetweenLogo(
                logo: "images/spring-logo.png", routePage: SpringSyllabus()),
            BetweenLogo(
                logo: "images/hibernate-logo.png",
                routePage: HibernateSyllabus()),
            EndLogo(logo: endLogo, routePage: ReactNativeSyllabus())
          ],
        ),
      ),
    );
  }

  Widget DBWidgets({String? startLogo, String? endLogo}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            StartLogo(logo: startLogo, routePage: MySQLSyllabus()),
            BetweenLogo(
                logo: "images/mongodb.png", routePage: MongoDBSyllabus()),
            BetweenLogo(logo: "images/oracle.png", routePage: OracleSyllabus()),
            EndLogo(logo: endLogo, routePage: MariaDBSyllabus())
          ],
        ),
      ),
    );
  }

  Widget ToolsWidgets({String? startLogo, String? endLogo}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 145,
        child: Row(
          children: [
            StartLogo(logo: startLogo, routePage: VSCodeSyllabus()),
            BetweenLogo(
                logo: "images/eclipse.png", routePage: EclipseSyllabus()),
            BetweenLogo(logo: "images/git-img.png", routePage: GitSyllabus()),
            BetweenLogo(logo: "images/github.png", routePage: GithubSyllabus()),
            EndLogo(logo: endLogo, routePage: PostmanSyllabus())
          ],
        ),
      ),
    );
  }

  //Made a function for Start logos due to their different margin
  Widget StartLogo({String? logo, Widget routePage = const HomePage()}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => routePage));
      },
      child: Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.only(left: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(156, 10, 10, 10),
                  // offset: Offset(2, 1),
                  blurRadius: 8),
            ],
            image: DecorationImage(
              image: AssetImage("$logo"),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  ////Made a function for Between logos due to their different margin
  Widget BetweenLogo({String? logo, Widget routePage = const HomePage()}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => routePage));
      },
      child: Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, width: 1, style: BorderStyle.solid),
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

  //Made a function for End logos due to their different margin
  Widget EndLogo({String? logo, Widget routePage = const HomePage()}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => routePage));
      },
      child: Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.only(right: 40, left: 30),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(color: Color.fromARGB(156, 10, 10, 10), blurRadius: 8),
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
          LanguageWidgets(
              startLogo: "images/Java.jpeg", endLogo: "images/js-logo.png"),
          //FrameWorks
          TitleBar(name: "Frameworks"),
          //Logos
          FrameWorkWidgets(
              startLogo: "images/flutter-logo.png",
              endLogo: "images/react-native-logo.png"),
          //Databases
          TitleBar(name: "Databases"),
          //Logos
          DBWidgets(
              startLogo: "images/mysql-img.png", endLogo: "images/maria.png"),
          //Tools
          TitleBar(name: "Tools"),
          //Logos
          ToolsWidgets(
              startLogo: "images/vs-logo.png", endLogo: "images/postman.png"),

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
