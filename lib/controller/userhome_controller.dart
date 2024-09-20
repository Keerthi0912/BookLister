import 'package:flutter/material.dart';
import 'package:lesson4/view/edit_screen.dart';
import 'package:lesson4/view/userhome_screen.dart';

class UserHomeController {
  final UserHomeState state;
  UserHomeController(this.state);

  void gotoEdit() async {
    await Navigator.pushNamed(state.context, EditScreen.routeName,
        arguments: state.widget.user);

    state.callSetState(() {}); //redraw the screen
  }
}
