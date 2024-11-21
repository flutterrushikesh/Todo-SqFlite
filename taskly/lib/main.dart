import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:taskly/Controller/onboarding_controller.dart';
import 'package:taskly/Screen_Resolution/screen_width.dart';
import 'package:taskly/Splash_Screen.dart/splash_screen.dart';

import 'Screen_Resolution/screen_height.dart';

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
    return ChangeNotifierProvider(
        create: (context) => OnboardingController(),
        child: MaterialApp(
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
              bodyMedium: GoogleFonts.lato(
                color: Colors.white,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color.fromRGBO(36, 161, 156, 1),
                ),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: screenWidth(
                      context: context,
                      responsiveWidth: 0.3,
                    ),
                    vertical: screenHeight(
                      context: context,
                      responsiveHeight: 0.015,
                    ),
                  ),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ),
          home: const SplashScreen(),
        ));
  }
}
