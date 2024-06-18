import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter DropdownButton Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedValue;
  List<String> dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: Text(
          'DropdownButton Example',
          style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedValue,
          hint: Text(
            'Select an item',
            style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.red,
          ),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.red,
          ),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.aboreto(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            );
          }).toList(),
          dropdownColor: Colors.red[200],
        ),
      ),
    );
  }
}
