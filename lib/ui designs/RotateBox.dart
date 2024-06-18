import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter RotatedBox Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotatedBox Example'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Original Text',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900),),
            const SizedBox(height: 20),
            RotatedBox(
              quarterTurns: 1, // Rotates the child 90 degrees clockwise
              child: Text('Rotated Text 90°',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20),
            RotatedBox(
              quarterTurns: 2, // Rotates the child 180 degrees
              child: Text('Rotated Text 180°',style: GoogleFonts.abrilFatface(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20),
            RotatedBox(
              quarterTurns: 3, // Rotates the child 270 degrees clockwise
              child: Text('Rotated Text 270°',style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20),
            RotatedBox(
              quarterTurns: 4, // Rotates the child 270 degrees clockwise
              child: Text('Rotated Text 360°',style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
