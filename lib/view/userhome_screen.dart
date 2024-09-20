import 'package:flutter/material.dart';
import 'package:lesson4/controller/userhome_controller.dart';
import 'package:lesson4/model/user_record.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen(this.user, {super.key});

  final UserRecord user;

  static const routeName = '/userHomeScreen';

  @override
  State<StatefulWidget> createState() {
    return UserHomeState();
  }
}

class UserHomeState extends State<UserHomeScreen> {
  late UserHomeController con;

  @override
  void initState() {
    super.initState();
    con = UserHomeController(this);
  }

  void callSetState(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home of ${widget.user.name}'),
        actions: [
          IconButton(
            onPressed: con.gotoEdit,
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 185, 241, 201),
          padding: const EdgeInsets.fromLTRB(24.0, 30.0, 10.0, 0.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'email: ${widget.user.email}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'phone: ${widget.user.phone}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'age: ${widget.user.age}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'classification: ${widget.user.classification.name}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'major: ${widget.user.major.name}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'Programming Language Proficiency',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              for (var lang in ProgLanguages.values)
                Row(
                  children: [
                    Switch(
                      value: widget.user.progLanguages![lang] ?? false,
                      onChanged: null,
                    ),
                    if (lang == ProgLanguages.cpp)
                      const Text('C++')
                    else if (lang == ProgLanguages.csharp)
                      const Text('c#')
                    else
                      Text(lang.name),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
