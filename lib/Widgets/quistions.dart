import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Quistion extends StatefulWidget {
  const Quistion({
    Key? key,required this.quistion
  }) : super(key: key );
final String quistion;

  @override
  State<Quistion> createState() => _QuistionState();
}

class _QuistionState extends State<Quistion> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child : Text(widget.quistion,
            style: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ))
    );
  }
}