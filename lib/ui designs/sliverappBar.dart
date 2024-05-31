import 'package:flutter/material.dart';

class CustomSliverAppbar extends StatelessWidget {
   final List<dynamic> Icon;
   final String text;
   final Color color;
  const CustomSliverAppbar({super.key, required this.Icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        children: [
          Text(text),

        ],
      ),
    );
  }
}
