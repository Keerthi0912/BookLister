import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget{
  const StartScreen({super.key});

  static const routeName = '/startScreen';

  @override
  State<StatefulWidget> createState() {
    return StartState();
    
  }

}

class StartState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Screen'),
      ),
      body: const Text('Start Screen body'),
    );
  }

}