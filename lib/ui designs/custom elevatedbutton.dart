import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButtons extends StatelessWidget {
  final String text;
  final Color color;
  const CustomElevatedButtons({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
    style: ElevatedButton.styleFrom(
        backgroundColor: color),
        child: Text(text,style: GoogleFonts.aboreto(color: Colors.white),),);
  }
}
