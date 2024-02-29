import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
  void Counter() {
    setState(() {
      count++;
    });
  }

  Widget Mypic() {
    if (count >= 1) {
      return Center(
        child: Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            boxShadow: [
              BoxShadow(blurRadius: 8),
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("images/my-pic.jpg"), fit: BoxFit.cover),
          ),
        ),
      );
    }
    return Container();
  }

  Widget NameBar() {
    if (count >= 2) {
      return Center(
        child: Container(
          height: 40,
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Sushobhan Limbole",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
    return Container();
  }

  Widget ABitAboutMe() {
    if (count >= 3) {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Text(
          "A Bit About Me :",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      );
    }
    return Container();
  }

  Widget Info() {
    if (count >= 4) {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 10, right: 3),
        child: Text(
          "I am a passionate web and app developer currently pursuing B.Tech in Computer Science Engineering.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      );
    }
    return Container();
  }

  Widget SkillsTitle() {
    if (count >= 5) {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Text(
          "Skills :",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      );
    }
    return Container();
  }

  Widget Languages() {
    if (count >= 6) {
      return Container(
        height: 60,
        child: Row(children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              "Languages",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      );
    }
    return Container();
  }

  Widget LanguageWidgets({String? startLogo, String? endLogo}) {
    if (count >= 7) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 145,
          child: Row(
            children: [
              StartLogo(logo: startLogo),
              BetweenLogo(logo: "images/Dart-logo.png"),
              BetweenLogo(logo: "images/Python-logo.png"),
              EndLogo(logo: endLogo)
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget Frameworks() {
    if (count >= 8) {
      return Container(
        height: 60,
        child: Row(children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              "Frameworks",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      );
    }
    return Container();
  }

  Widget FrameWorkWidgets({String? startLogo, String? endLogo}) {
    if (count >= 9) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 145,
          child: Row(
            children: [
              StartLogo(logo: startLogo),
              BetweenLogo(logo: "images/spring-logo.png"),
              BetweenLogo(logo: "images/hibernate-logo.png"),
              EndLogo(logo: endLogo)
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget DB() {
    if (count >= 10) {
      return Container(
        height: 60,
        child: Row(children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              "Databases",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      );
    }
    return Container();
  }

  Widget DBWidgets({String? startLogo, String? endLogo}) {
    if (count >= 11) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 145,
          child: Row(
            children: [
              StartLogo(logo: startLogo),
              BetweenLogo(logo: "images/mongodb.png"),
              BetweenLogo(logo: "images/oracle.png"),
              EndLogo(logo: endLogo)
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget Tools() {
    if (count >= 12) {
      return Container(
        height: 60,
        child: Row(children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              "Tools",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      );
    }
    return Container();
  }

  Widget ToolsWidgets({String? startLogo, String? endLogo}) {
    if (count >= 13) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 145,
          child: Row(
            children: [
              StartLogo(logo: startLogo),
              BetweenLogo(logo: "images/eclipse.png"),
              BetweenLogo(logo: "images/git-img.png"),
              BetweenLogo(logo: "images/github.png"),
              EndLogo(logo: endLogo)
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget StartLogo({String? logo}) {
    return Container(
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
    );
  }

  Widget BetweenLogo({String? logo}) {
    return Container(
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
    );
  }

  Widget EndLogo({String? logo}) {
    return Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.only(right: 40, left: 30),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 1, style: BorderStyle.solid),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(156, 10, 10, 10),
                blurRadius: 8),
          ],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("$logo"),
            fit: BoxFit.cover,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
        centerTitle: true,
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 2,
      ),
      body: SizedBox(
        child: ListView(
          children: [
            //Photo
            Mypic(),
            //Name Bar
            NameBar(),
            //Info title
            ABitAboutMe(),
            //Info
            Info(),
            //Skills title
            SkillsTitle(),
            //Languages
            Languages(),
            //Logos
            LanguageWidgets(
              startLogo: "images/Java.jpeg",
              endLogo: "images/js-logo.png",
            ),
            //FrameWorks
            Frameworks(),
            //Logos
            FrameWorkWidgets(
              startLogo: "images/flutter-logo.png",
              endLogo: "images/react-native-logo.png",
            ),
            //Databases
            DB(),
            //Logos
            DBWidgets(
              startLogo: "images/mysql-img.png",
              endLogo: "images/maria.png",
            ),
            //Tools
            Tools(),
            //Logos
            ToolsWidgets(
              startLogo: "images/vs-logo.png",
              endLogo: "images/postman.png",
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Counter,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
