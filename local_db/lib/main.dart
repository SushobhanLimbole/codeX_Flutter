import 'package:flutter/material.dart';
import 'package:local_db/insert_page.dart';
import 'package:local_db/local.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

void main() async {
  print('main method called');
  createDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: InsertPage());
  }
}
