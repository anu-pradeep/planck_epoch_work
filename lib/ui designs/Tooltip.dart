// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Tooltip Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Tooltip Example'),
//         ),
//         body: const Center(
//           child: Tooltip(
//             message: 'This is a tooltip',
//             child: Icon(
//               Icons.info,
//               size: 100.0,
//               color: Colors.blue,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ) //IconButton
      ), //AppBar
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Tooltip(
                    message: 'Text',
                    child: Text(
                      'Flutter is an open-source UI software development kit created by Google. ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ), //TextStyle
                    ), //Text
                  ), //Tooltip
                ), //Padding
                color: Colors.green[50],
                width: 300,
                height: 175,
              ), //Container
            ], //<Widget>[]
          ) //Row
      ), //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false,
  )); //MaterialApp
}
