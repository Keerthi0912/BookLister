// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:lesson4/controller/startscreen_controller.dart';
import 'package:lesson4/model/user_record.dart';

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

  void callSetState(fn) => setState(fn);

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
            FilledButton.tonal(
              onPressed: con.onPressedListViewDemo,
              child: const Text('Book List View Demo'),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              'Sign in as:',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            RadioListTile<int>(
              value: 0,
              title: Text(fakeUserDB[0].email),
              subtitle: Text(fakeUserDB[0].name),
              groupValue: con.userIndex,
              onChanged: con.onChangedRadio,
            ),
            RadioListTile<int>(
              value: 1,
              title: Text(fakeUserDB[1].email),
              subtitle: Text(fakeUserDB[1].name),
              groupValue: con.userIndex,
              onChanged: con.onChangedRadio,
            ),
            FilledButton.tonal(
              onPressed: con.onPressedUserHome,
              child: const Text('Goto User Home'),
            ),
          ],
        ),
      ),
    );
  }
}
