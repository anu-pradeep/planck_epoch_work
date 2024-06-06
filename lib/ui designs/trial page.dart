import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Horizontal ListView Example'),
        ),
        body: Center(
          child: HorizontalListView(),
        ),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Set the height of the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150, // Set the width of each item
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
