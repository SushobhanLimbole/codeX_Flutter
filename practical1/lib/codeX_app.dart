import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.account_circle_rounded)),
        title: Text(
          "codeX",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(201, 9, 9, 9),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      "Languages",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
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
                                blurRadius: 2),
                          ],
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.4Z6gIWroOVvUsziZcJKL6QHaFj&pid=Api&P=0&h=220"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/Dart-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/Python-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/js-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      "Frameworks",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/flutter-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/spring-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/hibernate-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-images-1.medium.com/max/1600/1*glkosslpqhOOrGyEqjlYdw.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      "Databases",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/mysql-img.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/mongodb.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/oracle.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/maria.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      "Tools",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/vs-logo.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/eclipse.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(156, 10, 10, 10),
                                offset: Offset(2, 1),
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("images/postman.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
