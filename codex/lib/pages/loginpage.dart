import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:codex/pages/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  String name = '';
  String password = '';
  // final userNameController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/login-bg.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(20)),
              child: BlurryContainer(
                height: 498,
                width: 300,
                // color: Color.fromARGB(5, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/new-app-logo.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 275,
                      child: TextFormField(
                        onChanged: (value) => name = value,
                        decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.white54),
                          floatingLabelStyle: TextStyle(
                              color: Color.fromARGB(255, 60, 189, 146)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 60, 189, 146))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 275,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) => password = value,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white54),
                          floatingLabelStyle: TextStyle(
                              color: Color.fromARGB(255, 60, 189, 146)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 60, 189, 146))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 143),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(273, 20)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(name: name,password: password,)));
                        },
                        child: Center(
                          child: Text("Login"),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/Google.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/apple-logo.png"),
                                  fit: BoxFit.fill)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
