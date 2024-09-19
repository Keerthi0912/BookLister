// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:lesson4/controller/counterdemo_controller.dart';
import 'package:lesson4/model/counter.dart';

class CounterDemoScreen extends StatefulWidget {
  const CounterDemoScreen({super.key});

  static const routeName = '/counterDemoScreen';

  @override
  State<StatefulWidget> createState() {
    return CounterDemoState();
  }
}

class CounterDemoState extends State<CounterDemoScreen> {
  late Counter model;
  late CounterDemoController con;
  @override
  void initState() {
    super.initState();
    model = Counter();
    con = CounterDemoController(this);
    print('Counter Screen: initState()');
  }

  @override
  void dispose() {
    print('Counter Screen: dispose()');
    super.dispose();
  }

  void callSetState(VoidCallback fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    print('Counter Screen: build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: con.onPressedDownArrow,
                    icon: const Icon(
                      Icons.arrow_downward,
                      size: 50.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      color: Colors.amber[100],
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 12.0, 30.0, 12.0),
                      child: Text(
                        '${model.value}',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: con.onPressedUpArrow,
                    icon: const Icon(
                      Icons.arrow_upward,
                      size: 50.0,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '# of clicks = ${model.clicks} ',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 12.0,
            ),
            FilledButton.tonal(
              onPressed: con.resetCounter,
              child: const Text('Reset Counter'),
            ),
            FilledButton.tonal(
              onPressed: con.gotoListView,
              child: const Text('Go to ListView Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
