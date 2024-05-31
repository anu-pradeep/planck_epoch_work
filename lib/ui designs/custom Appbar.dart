import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String name;
  final List<dynamic> Icon;
  final Color color;
  const CustomAppBar({super.key, required this.name, required this.Icon, required this.color, });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.blue[900],
      backgroundColor: color,
      title: Text(name,style: GoogleFonts.aboreto(color: Colors.white),),
      actions:  [
        ...Icon,
      ],
    );
  }
}
