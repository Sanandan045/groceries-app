import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/auth/sign_in.dart';
import 'package:grocrry/widgets/primary_btn.dart';

class OnboradingScreen extends StatefulWidget {
  const OnboradingScreen({super.key});

  @override
  State<OnboradingScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<OnboradingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/bg.jpg',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Container(
         
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
      
              children: [
                SizedBox(height: 350,),
                Text(
                  "Welcome \n to our store",
                  textAlign: TextAlign.center,
                  
                  style: GoogleFonts.lato(
                    
                      color: Color(
                        0xFFFFFFFF,
                      ),
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                ),
                 Text("Ger your groceries in as fast as one hour ",style: TextStyle(
                  color: Color(0xB2FCFCFC),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,

                ),),
                SizedBox(height: 15,),
                PrimaryBtn(btnName: "Get Started", bgColor: Colors.green, callback: (){ Get.to(Login());})
          
                
 
               
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
