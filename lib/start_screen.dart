import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          (Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(123, 255, 255, 255),
          )),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the Fun Way',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              icon: const Icon(Icons.arrow_right_alt_outlined,
                  color: Colors.white),
              label: const Text('Start Quiz',
                  style: TextStyle(fontSize: 20, color: Colors.white)))
        ],
      ),
    );
  }
}
