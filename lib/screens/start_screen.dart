import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/test.jpeg',
          width: 300,
        ),
        const SizedBox(
          height: 40,
        ),
        Text('Learn about Kenya the fun way!',
            style: GoogleFonts.raleway(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) )
          ),
          icon: const Icon(Icons.arrow_circle_right_outlined),
          label: const Text('Start quiz'),
        )
      ],
    ));
  }
}
