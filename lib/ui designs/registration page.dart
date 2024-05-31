import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planck_epoch_works/ui%20designs/custom%20Appbar.dart';
import 'package:planck_epoch_works/ui%20designs/custom%20TextformField%20.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
                key: formkey,
                child: Column(children: [
                  CustomAppBar(name: "register", Icon: [Icon(Icons.search),
                    SizedBox(width: 10,),
                    Icon(Icons.account_box_rounded)], color: Colors.cyan,),
                  const Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnhMZxaknowE4DkGwaUx-kpyrcIGbVkJxTSA&s")),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 350),
                    child: Text(
                      "Register",
                      style: GoogleFonts.abel(
                          fontSize: 30, color: Colors.lightBlue[900]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Please register to login",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15, color: Colors.lightBlue[900])),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: CustomTextField(label: "Username", iconVisible: false),),
                  //   TextFormField(
                  //     decoration: InputDecoration(
                  //       prefixIcon: const Icon(
                  //         Icons.person,
                  //         color: Colors.lightBlue,
                  //       ),
                  //       labelText: "user name",
                  //       labelStyle: TextStyle(
                  //           color: Colors.lightBlue[100], fontSize: 10),
                  //       hintText: "user name",
                  //       hintStyle: TextStyle(
                  //           color: Colors.lightBlue[50], fontSize: 10),
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(150)),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: const BorderSide(color: Colors.blue),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: const BorderSide(color: Colors.blue),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 20, left: 20, right: 20),
                    child:CustomTextField(label: 'Mobile number',iconVisible: false,)
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child:

                    TextFormField(
                      obscureText: showpass,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                        suffixIcon: IconButton(
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
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.lightBlue[100], fontSize: 10),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.lightBlue[50], fontSize: 10),
                        // border:OutlineInputBorder(borderRadius:BorderRadius.circular(150)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "Remember me next time",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 13, color: Colors.lightBlue[900]),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      const Image(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/8532/8532409.png"),
                        height: 35,
                        width: 30,
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue[900]),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Already have account.? Sign In",
                        style:
                            GoogleFonts.aBeeZee(color: Colors.lightBlue[900]),
                      ))
                ]))));
  }
}
