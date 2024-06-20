import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InkWellExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InkWellExample extends StatelessWidget {
  const InkWellExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell Example'),
      ),
      body: Center(
        child: InkWell(
          // splashColor: Colors.green,               // ith click cheyumbo backgroundil kaanunnath...color splash cheyyum
          // focusColor: Colors.red,
          // highlightColor: Colors.red,                 // same as splash but highlight chyyum
          // hoverColor: Colors.yellow,                     // just cursor vekkumbo varunna color
          onTap: () {
            if (kDebugMode) {
              print('InkWell tapped!');
            }
          },
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'Tap Me',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
