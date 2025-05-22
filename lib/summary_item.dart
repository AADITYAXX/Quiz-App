import 'package:flutter/material.dart';
import 'package:adv_basics/questions_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.actor(
                  color: const Color.fromARGB(255, 247, 248, 247),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 202, 171, 252),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 252, 246),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
