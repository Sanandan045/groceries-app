import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/widgets/primary_btn.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3,),
          Image.asset("assets/images/signin.png"),
         Text("Get your groceries\nwith nectar",style:GoogleFonts.lato(
           color: Color(0xFF030303),
           fontSize: 26,
           fontWeight: FontWeight.w600
         ),),
         SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: SingleChildScrollView(
             child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: UnderlineInputBorder(),
                    hintText: 'Enter Your phone Number',
                   
                  
                  ),
                ),
           ),
         ),
         SizedBox(height: 20,),
         Center(
           child: Text("Or connect with social media",style: GoogleFonts.lato(
            color:Color(0xFF828282) ,
            fontSize:17 ,
            fontWeight: FontWeight.w600
           ),),
         ),
         SizedBox(height: 40,),
        PrimaryBtn(btnName: "Continue with Google", bgColor: Color(0xFF5383EC),  callback: (){print("Google");}),
          SizedBox(height: 25,),
          PrimaryBtn(btnName: "Continue with Facebook", bgColor: Color(0xFF4A66AC), callback: (){})
         
          
        ]),
      ),
    );
  }
}