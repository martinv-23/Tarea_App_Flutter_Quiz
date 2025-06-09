import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/button.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Prepárate para un desafío Flutter',
            style: GoogleFonts.orbitron(
              color: Colors.tealAccent,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          OutlinedButtonExample(
            '¡Empezar Quiz!',
            startQuiz,
            const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
