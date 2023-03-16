import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class result extends StatelessWidget {
  const result({Key? key, required this.q , required this.resultScore}) : super(key: key);
  final Function() q;
  final int resultScore;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$resultScore',
            style: GoogleFonts.cairo(fontSize: 44, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: q,
              child: Text(
                "Reset the quiz.",
                style: GoogleFonts.actor(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
