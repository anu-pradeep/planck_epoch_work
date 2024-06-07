import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customAppBaarr extends StatelessWidget {
  final List<dynamic> Icconns;
  final Color Coloorss;
  final String caption;

  const customAppBaarr(
      {super.key,
      required this.Icconns,
      required this.Coloorss,
      required this.caption});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Coloorss,
      title: Row(
        children: [
          const Icon(Icons.arrow_back, color: Colors.white),
          Text(
            caption,
            style: GoogleFonts.abrilFatface(color: Colors.white, fontSize: 18),
          ),
          const Icon(Icons.arrow_drop_down, color: Colors.white)
        ],
      ),
      actions: [...Icconns],
    );
  }
}
