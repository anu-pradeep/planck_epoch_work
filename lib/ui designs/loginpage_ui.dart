import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planck_epoch_works/ui%20designs/custom TextformField .dart';
import 'package:planck_epoch_works/ui%20designs/custom%20Appbar.dart';
import 'package:planck_epoch_works/ui%20designs/custom%20elevatedbutton.dart';
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
                child:  Column(children: [
                  const CustomAppBar(name: 'testing', Icon: [Icon(Icons.account_box_rounded)], color: Colors.cyan,),
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
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 280),
                    child: Text("Please sign in to continue",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15, color: Colors.lightBlue[900])),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: CustomTextField(label: "user name", iconVisible: false,),

                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child:CustomTextField(label: "password",iconVisible: true,)

                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          "Remember me next time",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 13, color: Colors.lightBlue[900]),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Image(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/8532/8532409.png"),
                        height: 35,
                        width: 30,
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  const SizedBox(
                    width: 400,
                    child:CustomElevatedButtons(text: "Sign in", color: Colors.lightBlue)
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.lightBlue[900]),
                    //   child: Text(
                    //     "Sign In",
                    //     style: GoogleFonts.aBeeZee(
                    //         fontSize: 15, color: Colors.white),
                    //   ),
                    // ),
                  ),
                  SizedBox(height: 25),
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
