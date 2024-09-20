import 'package:flutter/material.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/model/user_record.dart';
import 'package:lesson4/view/bookdetailview_screen.dart';
import 'package:lesson4/view/counterdemo_screen.dart';
import 'package:lesson4/view/edit_screen.dart';
import 'package:lesson4/view/listviewdemo_screen.dart';
import 'package:lesson4/view/start_screen.dart';
import 'package:lesson4/view/userhome_screen.dart';

void main() {
  runApp( const Lesson4App());
}

class Lesson4App extends StatelessWidget {
  const Lesson4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName:(context) => const StartScreen(),
        CounterDemoScreen.routeName:(context) => const CounterDemoScreen(),
        ListViewDemoScreen.routeName: (context) => const ListViewDemoScreen(),
        BookDetailViewScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if (args != null && args is Book) {
           return  BookDetailViewScreen(args);
          }else{
            return const Text('Argument is null or not Book: BookDetail');
          }
           },
           UserHomeScreen.routeName: (context) { 
            Object? args = ModalRoute.of(context)?.settings.arguments;
            if (args != null && args is UserRecord) {
             return  UserHomeScreen(args);
          } else {
            return const Text('Argument is null or not Book: UserHome');
          }
        },
        EditScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
            if (args != null && args is UserRecord) {
             return  EditScreen(args);
          } else {
            return const Text('Argument is null or not Book: EditScreen');
          }
        }
      },
    );
  }

}