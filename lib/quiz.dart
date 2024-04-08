import 'package:quiz_app_basics_ii/data/questions.dart';
import 'package:quiz_app_basics_ii/questions_screen.dart';
import 'package:quiz_app_basics_ii/results_screen.dart';
import 'package:quiz_app_basics_ii/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  //this is for elected answers and to show on the screen
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

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
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 30, 109, 212)),
          //child: activeScreen,
          child: screenWidget,
          /*activeScreen == 'questions_screen'
              ? QuestionsScreen(
                  onSelectAnswer: chooseAnswer,
                )
              : StartScreen(switchScreen),*/
        ),
      ),
    );
  }
}
