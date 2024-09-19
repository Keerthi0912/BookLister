import 'package:flutter/material.dart';
import 'package:lesson4/view/counterdemo_screen.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';
import 'package:lesson4/view/start_screen.dart';

void main() {
  runApp( const Lesson4App());
}

class Lesson4App extends StatelessWidget {
  const Lesson4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName:(context) => const StartScreen(),
        CounterDemoScreen.routeName:(context) => const CounterDemoScreen(),
        ListViewDemoScreen.routeName: (context) => const ListViewDemoScreen(),
      },
    );
  }

}