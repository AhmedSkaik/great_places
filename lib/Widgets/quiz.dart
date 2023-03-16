import 'package:flutter/material.dart';
import 'package:quiz_app/Screans/home_Screan.dart';
import 'package:quiz_app/Widgets/quistions.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key, required this.questionIndex, required this.answerQuestion})
      : super(key: key);

  final int questionIndex;
  final Function(int ) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Column(
          children: [
            Quistion(quistion: quistionText[questionIndex]['quistionText']
                .toString()),
            ...(quistionText[questionIndex]['answers'] as List<
                Map<String, Object>>).map((answer) {
              return Answers(answers: answer['text'].toString(),
                  x: () =>
                      answerQuestion(int.parse(answer['Score'].toString())));
            }).toList()


          ],
        ));
  }
}
