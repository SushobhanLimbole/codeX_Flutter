import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_codex_app/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Color.fromRGBO(44, 55, 149, 0.67),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(120)),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Text(
                    'Welcome',
                    style: GoogleFonts.jost(
                        fontSize: 50, color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 15),
                  child: Text(
                    'Please sign in to continue',
                    style: GoogleFonts.quicksand(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your mobile no. or email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.close),
                        // suffixIconColor: Color.fromRGBO(44, 55, 149, 0.67),
                        floatingLabelStyle:
                            TextStyle(color: Color.fromRGBO(44, 55, 149, 0.67)),
                        labelText: 'Mobile no. or email',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(44, 55, 149, 0.67))),
                        hintText: 'Mobile no. or email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                        // suffixIconColor: Color.fromRGBO(44, 55, 149, 0.67),
                        floatingLabelStyle:
                            TextStyle(color: Color.fromRGBO(44, 55, 149, 0.67)),
                        labelText: 'Password',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(44, 55, 149, 0.67))),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.anekTamil(
                        color: Color.fromRGBO(142, 142, 147, 1)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      bool loginValidator = _formKey.currentState!.validate();
                      if (loginValidator) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login Failed')));
                      }
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(99, 113, 242, 1),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.anekTamil(
                              fontSize: 15,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                            style: GoogleFonts.anekTamil(
                                color: Color.fromRGBO(142, 142, 147, 1))),
                        InkWell(
                          onTap: () {},
                          child: Text(" Sign Up",
                              style: GoogleFonts.anekTamil(
                                  color: Colors.red[600])),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
