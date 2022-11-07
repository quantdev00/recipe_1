import 'dart:async';

import 'dart:developer';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Cat {
  final int id;
  final String name;
  final int age;
  Cat({
    required this.id,
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'age': age,
      };

  void showTable() {
    return log('id : $id, name : $name, age : $age');
  }

  @override
  String toString() {
    return 'id : $id, name : $name, age : $age';
  }
}

class CatService {
  Future<void> insertCatData(Cat cat) async {
    final db = await getDatabase();

    await db.insert(catTable, cat.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<Database> getDatabase() async {
    final database = openDatabase(
      join(await getDatabasesPath(), dbName),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE Cat (id INTEGER PRIMARY KEY, name TEXT, age INTEGER),');
      },
      version: 1,
    );
    return database;
  }
}

const dbName = 'cat_database.db';
const catTable = 'cats';
