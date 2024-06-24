import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: clipRRectSample(),
    debugShowCheckedModeBanner: false,
  ));
}

class clipRRectSample extends StatefulWidget {
  const clipRRectSample({super.key});

  @override
  State<clipRRectSample> createState() => _clipRRectSampleState();
}

class _clipRRectSampleState extends State<clipRRectSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ClipRRect Sample",
          style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Image(
          image: NetworkImage(
              "data:image/jpeg;base64,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"),
        ),
      )),
    );
  }
}