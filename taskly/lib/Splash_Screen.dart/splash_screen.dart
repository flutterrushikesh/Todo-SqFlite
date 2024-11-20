import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 161, 156, 1),
      body: Column(
        children: [
          Image.asset(
            'assets/icons/task.png',
          ),
        ],
      ),
    );
  }
}
