import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/local_db/localdb.dart';
import 'package:todo_firebase/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CollectionReference usersRef =
        FirebaseFirestore.instance.collection('users');

    print('first page build method');
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 12, 56, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 80),
                child: Text(
                  'Welcome',
                  style: GoogleFonts.averageSans(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 620,
                width: MediaQuery.of(context).size.width - 170,
                margin: const EdgeInsets.only(bottom: 110, left: 40),
                child: Image.asset('assests/first_page.png', fit: BoxFit.cover),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  'Enter Name',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 90,
                margin: const EdgeInsets.only(bottom: 80),
                child: TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 90,
                // margin: EdgeInsets.only(left: 70),
                child: Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(18),
                                      right: Radius.circular(18)))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(65, 201, 226, 1))),
                      onPressed: () async {
                        final QuerySnapshot querySnapshot = await usersRef
                            .where("user", isEqualTo: userController.text)
                            .get();

                        if (userController.text == "" ||
                            userController.text == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Please Enter the details!')));
                        } else {
                          if (querySnapshot.docs.isEmpty) {
                            UsersModelClass userObj = UsersModelClass(
                                name: userController.text.trimRight());
                            print('users ========= ${userObj.name}');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SeecondPage(userName: userObj.name),
                                ));
                            await insertUser(userObj);
                            await usersRef.add({'user': userObj.name});
                          } else {
                            UsersModelClass userObj = UsersModelClass(
                                name: userController.text.trimRight());
                            print('users = ${userObj.name}');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SeecondPage(
                                      userName: userController.text),
                                ));
                            await insertUser(userObj);
                          }
                        }
                      },
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.asapCondensed(
                            fontSize: 25,
                            color: const Color.fromRGBO(27, 26, 85, 0.65),
                            fontWeight: FontWeight.w600),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
