import 'package:lesson4/model/user_record.dart';

class EditScreenModel {
  late final UserRecord user;
  final UserRecord origUser;
  EditScreenModel(this.origUser) {
    user = origUser.clone();
  }

}