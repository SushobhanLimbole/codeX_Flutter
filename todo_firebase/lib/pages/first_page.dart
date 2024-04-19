import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('first page build method');
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 12, 56, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 80),
                child: Text(
                  'Welcome',
                  style: GoogleFonts.averageSans(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 620,
                width: MediaQuery.of(context).size.width - 170,
                margin: EdgeInsets.only(bottom: 110, left: 40),
                child: Image.asset('assests/first_page.png', fit: BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Enter Name',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 90,
                margin: EdgeInsets.only(bottom: 80),
                child: TextField(
                  controller: userController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 70),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(18),
                                right: Radius.circular(18)))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(65, 201, 226, 1))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SeecondPage(user: userController.text),
                          ));
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.asapCondensed(
                          fontSize: 25,
                          color: Color.fromRGBO(27, 26, 85, 0.65),
                          fontWeight: FontWeight.w600),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
