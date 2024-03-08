import 'package:quiz_app_basics_ii/data/questions.dart';
import 'package:quiz_app_basics_ii/questions_screen.dart';
import 'package:quiz_app_basics_ii/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  //this is for elected answers and to show on the screen
  List<String> selectedAnswers = [];
  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);

      if (selectedAnswers.length == questions.length) {
        setState(() {
          selectedAnswers = [];
          activeScreen = 'start_screen';
        });
      }
    });
  }

  //Widget? activeScreen;
  // var activeScreen = StartScreen('switchScreen');
  /* @override
  initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
 

  switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
   */
  var activeScreen = 'start_screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 30, 109, 212)),
          //child: activeScreen,
          child: activeScreen == 'questions_screen'
              ? QuestionsScreen(
                  onSelectAnswer: chooseAnswer,
                )
              : StartScreen(switchScreen),
        ),
      ),
    );
  }
}
