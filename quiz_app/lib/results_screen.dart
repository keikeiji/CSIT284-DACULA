import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data/questions.dart';
import 'questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });
  final void Function() onRestart;
  final List<String> chosenAnswers;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'QUIZ COMPLETE!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 220, 190, 250),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Your Score',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
              decoration: BoxDecoration(
                color: const Color.fromARGB(80, 30, 0, 70),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color.fromARGB(80, 255, 255, 255),
                ),
              ),
              child: Text(
                '$numCorrectQuestions / $numTotalQuestions',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25),
            QuestionsSummary(summaryData),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Try Again',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
