
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: SnackbarSample(),
    debugShowCheckedModeBanner: false,
  ));
}

class SnackbarSample extends StatefulWidget {
  const SnackbarSample({super.key});

  @override
  State<SnackbarSample> createState() => _SnackbarSampleState();
}

class _SnackbarSampleState extends State<SnackbarSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Sample",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content:  Text("This is snackbar",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),),
              action: SnackBarAction(label: "Undo", onPressed: () {}),
              backgroundColor: Colors.green[400],
              elevation: 10,
              duration: Durations.medium2,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green[200],shape: StadiumBorder()),
          child:  Text("Snack bar",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
