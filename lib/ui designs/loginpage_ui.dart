import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
runApp(MaterialApp(
  useInheritedMediaQuery: true,
  debugShowCheckedModeBanner: false,
  home: login(),
));
}
class login extends StatefulWidget
{
  @override
  State<login> createState()=> loginState();
}
class loginState extends State<login>
{
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.white,
     body:
     SingleChildScrollView(
       child: Form(
       key: formkey,
       child:Column(
         children: [
           const Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnhMZxaknowE4DkGwaUx-kpyrcIGbVkJxTSA&s")),
     const SizedBox(height: 10),
     Padding(padding: const EdgeInsets.only(right: 400),
       child: Text("Login",style: GoogleFonts.abel(fontSize: 30,color: Colors.lightBlue[900]),),),
     const SizedBox(height: 10),
      Padding(padding: const EdgeInsets.only(right: 280),
        child: Text("Please sign in to continue",style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.lightBlue[900])),),
     Padding(padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
       child: TextFormField(
         decoration: InputDecoration(
             prefixIcon: const Icon(Icons.person,color: Colors.lightBlue,),
             labelText: "user name" ,labelStyle:TextStyle(color: Colors.lightBlue[100],fontSize: 10),
             hintText: "user name",hintStyle: TextStyle(color: Colors.lightBlue[50],fontSize: 10),
             border:OutlineInputBorder(borderRadius:BorderRadius.circular(150)),
           enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(25.0),
             borderSide:  BorderSide(color: Colors.blue),
           ),
           focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(25.0),
             borderSide:  BorderSide(color: Colors.blue),
           ),),
       ),),
           const SizedBox(height: 25),
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: TextFormField(
               obscureText: showpass,
               obscuringCharacter: "*",
               decoration: InputDecoration(

                   prefixIcon: const Icon(Icons.lock,color: Colors.lightBlue,),
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
                         : Icons.visibility),color: Colors.lightBlue,
                   ),
                   labelText: "Password" ,labelStyle:TextStyle(color: Colors.lightBlue[100],fontSize: 10),
                   hintText: "Password",hintStyle: TextStyle(color: Colors.lightBlue[50],fontSize: 10),
                   // border:OutlineInputBorder(borderRadius:BorderRadius.circular(150)),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25.0),
                   borderSide:  BorderSide(color: Colors.blue),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25.0),
                   borderSide:  BorderSide(color: Colors.blue),
                 ),
               ),

             ),),
           SizedBox(height: 25),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 50),
                 child: Text("Remember me next time",style: GoogleFonts.aBeeZee(fontSize: 13,color: Colors.lightBlue[900]),),
               ),
               SizedBox(width: 200,),
               Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/8532/8532409.png"),height: 35,width: 30,)
             ],
           ),

           const SizedBox(height: 25),
           SizedBox(
             width: 400,
             child: ElevatedButton(onPressed: (){},
               style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue[900]),
                 child: Text("Sign In",style: GoogleFonts.aBeeZee(fontSize: 15,color: Colors.white),),),
           ),
           SizedBox(height: 25),
           TextButton(onPressed: (){}, child: Text("Don't have account.? Sign Up",style: GoogleFonts.aBeeZee(color: Colors.lightBlue[900]),))
         ])
   )));
  }

}