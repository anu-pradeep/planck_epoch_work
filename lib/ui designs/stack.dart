import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackSample(),
  ));
}

class StackSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Container(
            color: Colors.cyanAccent,
            height: 500,
            width: 400,
            child: const Center(
                child: Text(
              "HELLO",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            )),
          )),
          Positioned(
            top: 150,
            left: 90,
            child: Container(
              color: Colors.amberAccent,
              height: 150,
              width: 150,
              child: const Center(
                  child: Text(
                "HAI",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              )),
            ),
          ),
          Positioned(
            top: 150,
            right: 100,
            child: Container(
              color: Colors.green,
              height: 180,
              width: 150,
              child: const Center(
                  child: Text(
                "HI",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
