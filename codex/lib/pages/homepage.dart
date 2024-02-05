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
          Container(
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 130,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JavaSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          image: DecorationImage(
                            image: AssetImage("images/Java.jpeg"),
                            // image: NetworkImage(
                            //     "https://tse1.mm.bing.net/th?id=OIP.4Z6gIWroOVvUsziZcJKL6QHaFj&pid=Api&P=0&h=220"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DartSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/Dart-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PythonSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/Python-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JsSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(right: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/js-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 130,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlutterSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/flutter-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpringSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/spring-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HibernateSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/hibernate-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReactNativeSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(right: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/react-native-logo.png"),
                            // image: NetworkImage(
                            //     "https://cdn-images-1.medium.com/max/1600/1*glkosslpqhOOrGyEqjlYdw.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 130,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MySQLSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/mysql-img.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MongoDBSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/mongodb.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OracleSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/oracle.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MariaDBSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(right: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/maria.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 130,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VSCodeSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/vs-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EclipseSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/eclipse.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GitSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/git-img.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GithubSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/github.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostmanSyllabus()));
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(right: 40),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/postman.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
