import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white.withOpacity(0.65),
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter!',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.white.withOpacity(0.65),
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white.withOpacity(0.65),
            ),
            onPressed: switchScreen,
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
