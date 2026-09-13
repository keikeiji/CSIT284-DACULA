import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'answer_button.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'QUESTION ${currentQuestionIndex + 1}',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 220, 190, 250),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: const Color.fromARGB(80, 30, 0, 70),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color.fromARGB(80, 255, 255, 255),
                ),
              ),
              child: Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
