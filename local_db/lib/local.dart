import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class PlayerModelClass {
  int jerNo;
  String name;
  // double runs;

  PlayerModelClass({required this.jerNo, required this.name});

  Map<String, dynamic> toMap() {
    return {"jerNo": jerNo, "name": name};
  }

  @override
  String toString() {
    return ''' jerNo : $jerNo , name : $name  ''';
  }
}

void main() async {
  PlayerModelClass p1 = PlayerModelClass(jerNo: 12, name: "virat");
  // await insertPlayer(p);
  await insertPlayer(p1);
  PlayerModelClass p = PlayerModelClass(jerNo: 18, name: "virat");
  await updatePlayer(p);
  List player = await getPlayers();

  // print(player[0].toMap());
  for (var element in player) {
    print(element.jerNo);
    print(element.name);
  }
}

Future createDb() async {
  print('create method called');
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "Players.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          "CREATE TABLE Player(name TEXT, jerNo INTEGER Primary key,runs REAL)");
    },
  );
}

Future<void> insertPlayer(PlayerModelClass player) async {
  final localDB = await database;
  print('localDb = $localDB');
  print('insert method called $player');
  await localDB.insert(
    "Player",
    player.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<PlayerModelClass>> getPlayers() async {
  print('get method called');
  final localDB = await database;

  List<Map<String, dynamic>> playerListOfMap = await localDB.query("Player");

  return List.generate(playerListOfMap.length, (index) {
    Map map = playerListOfMap[index];

    int jerNo = map["jerNo"];
    String name = map["name"];
    // double runs = map["runs"];

    return PlayerModelClass(
      jerNo: jerNo,
      name: name,
      // runs: runs,
    );
  });
}

Future<void> updatePlayer(PlayerModelClass player) async {
  print('update method called');
  final localDB = await database;
  await localDB.update(
    "Player",
    player.toMap(),
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}

Future<void> deletePlayer(PlayerModelClass player) async {
  final localDB = await database;
  await localDB.delete(
    "Player",
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}
