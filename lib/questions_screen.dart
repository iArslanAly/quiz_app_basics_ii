import 'package:flutter/material.dart';
import 'package:quiz_app_basics_ii/answer_button.dart';
import 'package:quiz_app_basics_ii/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();

  final void Function(String answer) onSelectAnswer;
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var curretQuestionIndex = 0;
  void answerQuestion(selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      //curretQuestionIndex = curretQuestionIndex + 1;
      curretQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[curretQuestionIndex];
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    });
              })
            ],
          ),
        ));
  }
}
