import 'package:flutter/material.dart';
import 'package:lesson4/view/counterdemo_screen.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';

import '../view/start_screen.dart';

class StartScreenController {
  StartState state;
  StartScreenController(this.state);

  void onPressedCounterDemo() {
    Navigator.pushNamed(state.context, CounterDemoScreen.routeName);
  }

   void onPressedListViewDemo() {
    Navigator.pushNamed(state.context, ListViewDemoScreen.routeName);
  }
}