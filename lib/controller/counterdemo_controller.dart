import 'package:flutter/material.dart';
import 'package:lesson4/view/counterdemo_screen.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';

class CounterDemoController {
  CounterDemoState state;
  CounterDemoController(this.state);

  void onPressedUpArrow() {
    state.callSetState(() {
      state.model.intCounter();
      state.model.intClicks();
    });
  }

  void onPressedDownArrow() {
    state.callSetState(() {
      state.model.decCounter();
      state.model.intClicks();
    });
  }

  void resetCounter() {
    state.callSetState(() => state.model.reset());
 }

 void gotoListView() {
   Navigator.pushNamed(state.context, ListViewDemoScreen.routeName);
 }
}
