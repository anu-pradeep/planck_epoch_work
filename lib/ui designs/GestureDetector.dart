import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureDetector Demo',
      home: GestureDetectorDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GestureDetectorDemo extends StatefulWidget {
  @override
  _GestureDetectorDemoState createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  String _gestureMessage = 'No Gesture detected';

  void _updateGestureMessage(String message) {
    setState(() {
      _gestureMessage = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GestureDetector Demo'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => _updateGestureMessage('Tap detected'),
            onDoubleTap: () => _updateGestureMessage('Double Tap detected'),
            onLongPress: () => _updateGestureMessage('Long Press detected'),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  _gestureMessage,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ));
  }
}
