import 'package:flutter/material.dart';
import 'package:lesson4/model/user_record.dart';
import 'package:lesson4/view/edit_screen.dart';

class EditController {
  EditState state;
  EditController(this.state);

  void save() {
    FormState? currentState = state.formKey.currentState;
    if (currentState == null) return;
    if (!currentState.validate()) return;

    currentState.save();
    state.model.origUser.copyFrom(state.model.user);
    Navigator.of(state.context).pop(); // gp back
  }

  String? validateName(String? value) {
    if (value == null || value.length < 2) {
      return 'Invalid name';
    } else {
      return null;
    }
  }

  void saveName(String? value) {
    if (value != null) state.model.user.name = value;
  }

  String? validatePhone(String? value) {
    if (value == null || value.length != 10) {
      return 'Invalid phone number -10 digits required';
    }
    var re = RegExp(r'^[0-9]+$');
    if (re.hasMatch(value)) {
      return null;
    } else {
      return 'digits only';
    }
  }

  void savePhone(String? value) {
    if (value != null) state.model.user.phone = value;
  }

  String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'age is required';
    }
    int? age = int.tryParse(value);
    if (age == null) {
      return 'integer value only';
    } else if (age < 12) {
      return 'Minimum age is 12';
    } else {
      return null;
    }
  }

  void saveAge(String? value) {
    if (value != null) state.model.user.age = int.parse(value);
  }

  void onChangedClassification(Classification? c) {
    if (c != null) {
      state.callSetState(() {
        state.model.user.classification = c;
      });
    }
  }

  void onChangedMajor(Major? major) {
    if (major != null) {
      state.callSetState((){
        state.model.user.major = major;
      });
    }
  }
  void onChangedLanguage(bool? b, ProgLanguages key) {
    if (b != null) {
      state.callSetState(() {
        state.model.user.progLanguages![key] = b;
      });
    }
  }
}
