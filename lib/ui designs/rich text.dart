import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green[500],
          title: const Text('Rich Text Example',style: TextStyle(fontWeight: FontWeight.w900),),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Hello ',
              style: const TextStyle(color: Colors.black, fontSize: 24),
              children: <TextSpan>[
                const TextSpan(
                  text: 'bold',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: ' world!',
                ),
                TextSpan(
                  text: ' Click me',
                  style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Text clicked!');
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
