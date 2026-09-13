import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: const Color.fromARGB(80, 30, 0, 70),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: const Color.fromARGB(80, 255, 255, 255)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'FLUTTER QUIZ',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 220, 190, 250),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(height: 25),
            Image.asset(
              'assets/logo.png',
              width: 230,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 35),
            Text(
              'Test Your Flutter Skills',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              'Learn, practice, and see how much you know!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 220, 200, 240),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 150, 70, 220),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              icon: const Icon(Icons.play_arrow),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
