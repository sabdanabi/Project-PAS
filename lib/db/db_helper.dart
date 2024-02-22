import 'package:sqflite/sqflite.dart';
import 'dart:async';


class DatabaseHelper{
  static  const String _databaseName = 'fav_database.db';
  static Database? _database;

  static Future<void> init() async {
    var _dbDir = await getDatabasesPath();
    _database = await openDatabase("$_dbDir/$_databaseName",
        onCreate: (Database db, int version) async {
          await db.execute('''
      CREATE TABLE Like (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        title TEXT, 
        image BLOB
      )
    ''');
        }, version: 1);
  }

  static Database getDb() {
    if (_database == null) {
      throw Error();
    }

    return _database!;
  }


}