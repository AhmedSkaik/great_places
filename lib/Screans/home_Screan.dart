import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Widgets/answers.dart';
import 'package:quiz_app/Widgets/result.dart';

import '../Widgets/quistions.dart';
import '../Widgets/quiz.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({Key? key}) : super(key: key);

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

List<Map<String, Object>> quistionText = [
  {
    'quistionText': 'What\'s your favourite color?',
    'answers': [
      {'text': 'Black', 'Score': 10},
      {'text': 'Red', 'Score': 20},
      {'text': 'Green', 'Score': 30},
      {'text': 'Blue', 'Score': 40},
    ]
  },
  {
    'quistionText': 'What\'s your favourite Animal?',
    'answers': [
      {'text': 'Lion', 'Score': 10},
      {'text': 'Rabbit', 'Score': 20},
      {'text': 'taiger', 'Score': 30},
      {'text': 'Monkey', 'Score': 40},
    ]
  },
  {
    'quistionText': 'What\'s your favourite Teacher?',
    'answers': [
      {'text': 'Ahmed', 'Score': 10},
      {'text': 'Ben', 'Score': 20},
      {'text': 'Menna', 'Score': 30},
      {'text': 'Maha', 'Score': 40},
    ]
  }
];

class _HomeScreanState extends State<HomeScrean> {
  int _questionIndex = 0;
  int _totalScore = 0;

  answerQuestion(int score) {
    setState(() {
      _totalScore +=score;
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            'QuizApp',
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        body: _questionIndex < quistionText.length
            ? Quiz(
                questionIndex: _questionIndex, answerQuestion: answerQuestion)
            : result(
                q: () {
                  setState(() {
                    _totalScore=0;
                    _questionIndex = 0;
                  });
                }, resultScore: _totalScore,

        ));
  }
}
