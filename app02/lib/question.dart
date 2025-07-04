import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'answer_button.dart';
import 'data/questions.dart';

class Question extends StatefulWidget {
  const Question(this.onSelectedAnswer, {super.key});

  final void Function(String) onSelectedAnswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currenQuestion = questions[currentQuestionIndex];
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currenQuestion.text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 250, 205, 254),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          // [ [1, 2, 3], 4 ] => [ 1, 2, 3, 4 ]
          ...currenQuestion.shuffledAnswers.map((e) {
            return Container(
              margin: const EdgeInsets.all(5),
              child: AnswerButton(
                answerText: e,
                onPressed: () => answerQuestion(e),
              ),
            );
          }),
        ],
      ),
    );
  }
}
