import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planck_epoch_works/ui%20designs/custom TextformField .dart';
import 'package:planck_epoch_works/ui%20designs/registration%20page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
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
                  const Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnhMZxaknowE4DkGwaUx-kpyrcIGbVkJxTSA&s")),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 400),
                    child: Text(
                      "Login",
                      style: GoogleFonts.abel(
                          fontSize: 30, color: Colors.lightBlue[900]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Please sign in to continue",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15, color: Colors.lightBlue[900])),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: CustomTextField(label: "user name", iconVisible: false,),

                  ),
                  const SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child:CustomTextField(label: "password",iconVisible: true,)
                    // TextFormField(
                    //   obscureText: showpass,
                    //   obscuringCharacter: "*",
                    //   decoration: InputDecoration(
                    //     prefixIcon: const Icon(
                    //       Icons.lock,
                    //       color: Colors.lightBlue,
                    //     ),
                    //     suffixIcon: IconButton(
                    //       onPressed: () {
                    //         setState(() {
                    //           if (showpass) {
                    //             showpass = false;
                    //           } else {
                    //             showpass = true;
                    //           }
                    //         });
                    //       },
                    //       icon: Icon(showpass == true
                    //           ? Icons.visibility_off
                    //           : Icons.visibility),
                    //       color: Colors.lightBlue,
                    //     ),
                    //     labelText: "Password",
                    //     labelStyle: TextStyle(
                    //         color: Colors.lightBlue[100], fontSize: 10),
                    //     hintText: "Password",
                    //     hintStyle: TextStyle(
                    //         color: Colors.lightBlue[50], fontSize: 10),
                    //     // border:OutlineInputBorder(borderRadius:BorderRadius.circular(150)),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(25.0),
                    //       borderSide: const BorderSide(color: Colors.blue),
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(25.0),
                    //       borderSide: const BorderSide(color: Colors.blue),
                    //     ),
                    //   ),
                    // ),
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
                        "Sign In",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctxt) => Register()));
                      },
                      child: Text(
                        "Don't have account.? Sign Up",
                        style:
                            GoogleFonts.aBeeZee(color: Colors.lightBlue[900]),
                      ))
                ]))));
  }
}
