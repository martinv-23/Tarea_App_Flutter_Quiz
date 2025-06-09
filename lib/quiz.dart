import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/models/questions.dart';
import 'package:flutter_quiz_1/questions_screen.dart';
import 'package:flutter_quiz_1/start_screen.dart';
import 'package:flutter_quiz_1/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartScreen() {
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : QuestionsScreen(chooseAnswer);

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(selectedAnswers, restartScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: screenWidget,
        backgroundColor: const Color(0xFF141414), // fondo oscuro moderno
      ),
    );
  }
}
