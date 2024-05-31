import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool iconVisible;
  const CustomTextField({super.key, required this.label, required this.iconVisible});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.lightBlue,
        ),
        labelText: widget.label,
        labelStyle: TextStyle(
            color: Colors.lightBlue[100], fontSize: 10),
        hintText: widget.label,
        hintStyle: TextStyle(
            color: Colors.lightBlue[50], fontSize: 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(150)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        suffixIcon: Visibility(
          visible: widget.iconVisible ==true,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (showpass) {
                  showpass = false;
                } else {
                  showpass = true;
                }
              });
            },
            icon: Icon(showpass == true
                ? Icons.visibility_off
                : Icons.visibility),
            color: Colors.lightBlue,
          ),
        ),
      ),
    );

  }
}
class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
