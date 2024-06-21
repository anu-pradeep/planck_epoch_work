import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Here we have created list of steps that
// are required to complete the form
  List<Step> stepList() => [
        const Step(
            title: Text('Account'),
            content: Center(
              child: Text('Account'),
            )),
        const Step(
            title: Text('Address'),
            content: Center(
              child: Text('Address'),
            )),
        const Step(
            title: Text('Confirm'),
            content: Center(
              child: Text('Confirm'),
            ))
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text(
            'Stepper Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),

        // Here we have initialized the stepper widget
        body: Stepper(
          steps: stepList(),
        ));
  }
}
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
//       home: StepperExample(),
//     );
//   }
// }
//
// class StepperExample extends StatefulWidget {
//   @override
//   _StepperExampleState createState() => _StepperExampleState();
// }
//
// class _StepperExampleState extends State<StepperExample> {
//   int _currentStep = 0;
//
//   List<Step> _steps = [
//     Step(
//       title: Text('Step 1'),
//       content: Text('This is the first step.'),
//       isActive: true,
//     ),
//     Step(
//       title: Text('Step 2'),
//       content: Text('This is the second step.'),
//       isActive: true,
//     ),
//     Step(
//       title: Text('Step 3'),
//       content: Text('This is the third step.'),
//       isActive: true,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Stepper Example'),
//       ),
//       body: Stepper(
//         currentStep: _currentStep,
//         steps: _steps,
//         onStepTapped: (step) {
//           setState(() {
//             _currentStep = step;
//           });
//         },
//         onStepContinue: () {
//           if (_currentStep < _steps.length - 1) {
//             setState(() {
//               _currentStep += 1;
//             });
//           }
//         },
//         onStepCancel: () {
//           if (_currentStep > 0) {
//             setState(() {
//               _currentStep -= 1;
//             });
//           }
//         },
//       ),
//     );
//   }
// }
