import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleDialogExample(),
    );
  }
}

class SimpleDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          'Simple Dialog Example',
          style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
        ),

      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: Text(
                    'Select Option',
                    style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Option 1',
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Option 2',
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Option 3',
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Option 4',
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            'Show Simple Dialog',
            style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
