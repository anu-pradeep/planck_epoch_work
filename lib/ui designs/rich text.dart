import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const RichtextSample());
}

class RichtextSample extends StatelessWidget {
  const RichtextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[500],
          title: Text(
            "Rich text sample programme",
            style: GoogleFonts.abel(color: Colors.white,),
          ),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
                text: 'Hello',
                style: GoogleFonts.abrilFatface(fontSize: 20),
                children: [
                  //  rich text's children is textspan
                  TextSpan(
                    text: "bold",
                    style: GoogleFonts.abyssinicaSil(color: Colors.red),
                  ),
                  const TextSpan(text: "and",style: TextStyle(fontSize: 10)),
                  const TextSpan(text: "beautiful"),
                  const TextSpan(
                      text: "world", style: TextStyle(color: Colors.yellow)),
                  TextSpan(
                    text: ' Click me',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Text clicked!');
                      },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/gestures.dart';
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
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(backgroundColor: Colors.green[500],
//           title: const Text('Rich Text Example',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
//         ),
//         body: Center(
//           child: RichText(
//             text: TextSpan(
//               text: 'Hello hai',
//               style: const TextStyle(color: Colors.black, fontSize: 24),
//               children: <TextSpan>[
//                 const TextSpan(
//                   text: 'bold',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 const TextSpan(
//                   text: ' world!',
//                 ),
//                 TextSpan(
//                   text: ' Click me',
//                   style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () {
//                       print('Text clicked!');
//                     },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
