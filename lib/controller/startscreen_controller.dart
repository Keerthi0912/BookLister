import 'package:flutter/material.dart';
import 'package:lesson4/model/user_record.dart';
import 'package:lesson4/view/counterdemo_screen.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';
import 'package:lesson4/view/userhome_screen.dart';

import '../view/start_screen.dart';

class StartScreenController {
  StartState state;
  StartScreenController(this.state);
  int userIndex = 0;

  void onPressedCounterDemo() {
    Navigator.pushNamed(state.context, CounterDemoScreen.routeName);
  }

  void onPressedListViewDemo() {
    Navigator.pushNamed(state.context, ListViewDemoScreen.routeName);
  }

  void onChangedRadio(int? selectedIndex) {
    if (selectedIndex == null) return;
    state.callSetState(() {
      userIndex = selectedIndex;
    });
  }

  void onPressedUserHome() {
    Navigator.pushNamed(
      state.context,
      UserHomeScreen.routeName,
      arguments: fakeUserDB[userIndex],
    );
  }
}
