import 'package:flutter/material.dart';
import 'package:quizapp/question_screens.dart';

import 'package:quizapp/start_screen.dart';

import 'data.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<String> selectedAnswers = [];
  var currentscreen = 'Start-Screen';

  void initState() {
    // currentscreen = StartScreen(onPressed: SwitchScreen);
  }

  Future<void> chooseAnswer(String answer) async {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentscreen = 'Start-Screen';
      });
    }
  }

  void SwitchScreen() {
    setState(() {
      currentscreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(onPressed: SwitchScreen);
    if (currentscreen == 'questions-screen') {
      screenWidget = questionscreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFF69B4), // Pink in ARGB format (Alpha, Red, Green, Blue)
          Color(0xFFFFC0CB),
          // Baby Pink in ARGB format
        ],
      )),
      child: screenWidget,
    );
    ;
  }
}
