import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Answers extends StatefulWidget {
  const Answers({Key? key, required this.answers, required this.x})
      : super(key: key);
  final String answers;
  final Function() x;

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric( horizontal: 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),

      child: ElevatedButton(
          onPressed: widget.x,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey
          ),
          child: Text(
            widget.answers,
            style: GoogleFonts.cairo(fontSize: 20 , fontWeight: FontWeight.bold),
         //test hello
          )),
    );
  }
}
