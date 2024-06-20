import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DialogExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          'Dialog Example',
          style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    'Alert',
                    style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                  ),
                  content: Text(
                    'This is an alert dialog...',
                    style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text(
                        'OK',
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                  // backgroundColor: Colors.red[100],
                );
              },
            );
          },
          child: Text(
            'Show Alert Dialog',
            style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
