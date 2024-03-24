import 'package:flutter/material.dart';
import 'package:local_db/insert_page.dart';
import 'package:local_db/local.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  // createDb();
  print('main method called');
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "Players.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          "CREATE TABLE Player(name TEXT, jerNo INTEGER Primary key,runs REAL)");
    },
  );
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
