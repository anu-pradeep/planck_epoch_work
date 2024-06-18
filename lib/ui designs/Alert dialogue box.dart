import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Trial alert box",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
          backgroundColor: Colors.red[200],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Alert Dialog Box",
                      style: GoogleFonts.abrilFatface()),
                  content: Text("You have raised a Alert Dialog Box",
                      style: GoogleFonts.abrilFatface()),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.red[200],
                        padding: const EdgeInsets.all(14),
                        child: Text("okay", style: GoogleFonts.abrilFatface()),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Text(
              "Show alert Dialog box",
              style: GoogleFonts.abrilFatface(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),
          ),
        ));
  }
}
