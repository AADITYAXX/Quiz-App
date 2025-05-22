import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(159, 7, 1, 65),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
