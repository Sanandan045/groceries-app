import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryBtn extends StatelessWidget {
  final String btnName;
  final Color bgColor;
  
  final VoidCallback ?callback;
  

  const PrimaryBtn({super.key, required this.btnName, required this.bgColor,  required this.callback});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: (){callback!();},style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            minimumSize: Size(327, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            elevation: 0,
          ), child: Text(btnName,style: GoogleFonts.lato(
            color: Color(0xFFFFF9FF),
            fontWeight: FontWeight.w500,
            fontSize: 18
          ),));
  }
}



//  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
//             backgroundColor: Color(0xFF5383EC),
//             minimumSize: Size(327, 50),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12)
//             ),
//             elevation: 0,
//           ), child: Text(" Continue with google",style: TextStyle(
//             color: Color(0xFFFFF9FF),
//             fontWeight: FontWeight.w600,
//             fontSize: 18
//           ),)),