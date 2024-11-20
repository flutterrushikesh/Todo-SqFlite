import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:taskly/Splash_Screen.dart/splash_screen.dart';

dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    join(
      await getDatabasesPath(),
      'TODO.db',
    ),
    version: 1,
    onCreate: (db, version) async {
      log("${db}");
      await db.execute(
        '''CREATE TABLE TASK (
          id INTEGER PRIMARY KEY AUTO INCREMENT, 
          title TEXT, 
          description TEXT, 
          date TEXT
        )''',
      );
    },
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
