import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String heading;
  final List<dynamic> Iconn;
  final Color colors;
  const CustomSliverAppBar({super.key, required this.heading, required this.Iconn, required this.colors,  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: colors,
            title: Text(heading,style: GoogleFonts.aboreto(color: Colors.white),),
            actions:  [
              ...Iconn,
            ],
          )]);
  }
}
