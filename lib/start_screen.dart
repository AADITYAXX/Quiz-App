import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz.png',
            height: 250,
            width: 300,
            fit: BoxFit.contain,
            //color: const Color.fromARGB(150, 186, 186, 186),
          ),
          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     'assets/images/quiz.png',
          //     height: 250,
          //     width: 300,
          //     fit: BoxFit.contain,
          //   ),
          // ),
          SizedBox(height: 15),
          Text(
            'Get Ready For Quiz',
            style: GoogleFonts.shadowsIntoLight(
              color: Color.fromARGB(255, 1, 246, 229),
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 300),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(225, 251, 226, 2),
              textStyle: TextStyle(fontSize: 28),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}




//const Text(
//      style: TextStyle(
//     color: const Color.fromARGB(255, 5, 245, 245),
//    fontSize: 40,
//  ),
//'Start Screen',
//),