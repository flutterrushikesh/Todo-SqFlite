import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:taskly/Splash_Screen.dart/splash_screen.dart';

dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///DATABASE OPEN + CREATE REQUIRED TABLES.
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(36, 161, 156, 1),
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.roboto(
            color: Colors.white,
          ),
          bodyLarge: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
