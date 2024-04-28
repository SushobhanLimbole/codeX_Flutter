import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/firebase_options.dart';
import 'package:todo_firebase/local_db/localdb.dart';
import 'package:todo_firebase/pages/first_page.dart';
import 'package:todo_firebase/pages/third_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await createDb();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CollectionReference usersRef =
      FirebaseFirestore.instance.collection('users');

  String user = '';
  bool userExists = false;
  List data = [];
  List tempData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    tempData = await getUser();
    for (var element in tempData) {
      print('element ..... = ${element.toMap()}');
      data.add(element.toMap());
    }
    user = data[0]['name'];
    QuerySnapshot querySnapshot =
        await usersRef.where("user", isEqualTo: user).get();
    setState(() {
      userExists = querySnapshot.docs.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('data length ===== ${data.length}');
    if (userExists) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ThirdPage(userName: user),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      );
    }
  }
}
