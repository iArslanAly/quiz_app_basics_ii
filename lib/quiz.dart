import 'package:quiz_app_basics_ii/questions_screen.dart';
import 'package:quiz_app_basics_ii/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
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
  var activeScreen = 'questionsScreen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questionsScreen';
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
          child: activeScreen == 'questionsScreen'
              ? const QuestionsScreen()
              : StartScreen(switchScreen),
        ),
      ),
    );
  }
}
