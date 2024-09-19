// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:lesson4/controller/startscreen_controller.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  static const routeName = '/startScreen';

  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<StartScreen> {

  late StartScreenController con;
  @override
  void initState() {
    super.initState();
    con = StartScreenController(this);
    print('State Screen: initState()');
  }

  @override
  void dispose() {
    print('Start Screen: dispose()');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print('State Screen: build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FilledButton(
              onPressed: con.onPressedCounterDemo,
              child: const Text('Counter Demo'),
            ),
             FilledButton(
              onPressed: con.onPressedListViewDemo,
              child: const Text('Book List View Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
