import 'package:flutter/material.dart';
import 'package:lesson4/view/start_screen.dart';

void main() {
  runApp( const Lesson4App());
}

class Lesson4App extends StatelessWidget {
  const Lesson4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName:(context) => const StartScreen(),
      },
    );
  }

}