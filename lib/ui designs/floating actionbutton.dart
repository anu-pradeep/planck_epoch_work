import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FloatingActionButton Example'),
        ),
        body: const Center(
          child: Text('Press the FAB to perform an action!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed callback logic here
            if (kDebugMode) {
              print('FloatingActionButton pressed');
            }
          }, // Icon to display inside the FAB
          tooltip: 'Increment',
          child: const Icon(Icons.add), // Tooltip to show on long press
        ),
      ),
    );
  }
}
