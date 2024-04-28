import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/pages/third_page.dart';

class SeecondPage extends StatelessWidget {
  String? userName;
  SeecondPage({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    print('second page build method');
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 12, 56, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50, top: 40),
              height: MediaQuery.of(context).size.height - 580,
              width: MediaQuery.of(context).size.width - 150,
              child: Image.asset(
                'assests/second_page.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Build the future by completing tasks.',
                style: GoogleFonts.asapCondensed(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 130,
              child: Text(
                'Your tasks are bridges leading to the future. By completing them, reach your potential and your dreams.',
                textAlign: TextAlign.center,
                style: GoogleFonts.asapCondensed(
                    color: Colors.white, fontSize: 15.5),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 90),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(18),
                              right: Radius.circular(18)))),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(65, 201, 226, 1))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(userName: userName,),
                        ));
                  },
                  child: Text(
                    'Continue',
                    style: GoogleFonts.asapCondensed(
                        fontSize: 25,
                        color: const Color.fromRGBO(27, 26, 85, 0.65),
                        fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
