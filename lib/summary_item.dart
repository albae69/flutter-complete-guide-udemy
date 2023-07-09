import 'package:first_app/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    super.key,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      children: [
        QuestionIdentifier(
            questionIndex: (itemData['question_index'] as int),
            isCorrect: isCorrect),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(itemData['user_answer'] as String,
                  style: TextStyle(color: Colors.blue, fontSize: 14)),
              const SizedBox(height: 5),
              Text(itemData['correct_answer'] as String,
                  style: TextStyle(color: Colors.lightGreen, fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }
}
