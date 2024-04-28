import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class UsersModelClass {
  String name;

  UsersModelClass({required this.name});

  Map<String, dynamic> toMap() {
    return {"name": name};
  }

  @override
  String toString() {
    return ''' name : $name  ''';
  }
}

Future<void> createDb() async {
  print('create method called');
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    join(await getDatabasesPath(), "User.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute("CREATE TABLE User(name TEXT PRIMARY KEY)");
    },
  );
  print('create method done');
}

Future<void> insertUser(UsersModelClass user) async {
  final localDB = await database;
  print('localDb = $localDB');
  print('insert method called $user');
  await localDB.insert(
    "User",
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<UsersModelClass>> getUser() async {
  print('get method called');
  final localDB = await database;

  List<Map<String, dynamic>> user = await localDB.query("User");

  return List.generate(user.length, (index) {
    Map map = user[index];

    String name = map["name"];
    // double runs = map["runs"];
    print('get method entered');
    return UsersModelClass(
      name: name,
      // runs: runs,
    );
  });
}



Future<void> deleteUser(String? user) async {
  final localDB = await database;
  await localDB.delete(
    "User",
    where: "name = ?",
    whereArgs: [user],
  );
}
