import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifacationPage extends StatefulWidget {
  const VerifacationPage({super.key});

  @override
  State<VerifacationPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<VerifacationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        shadowColor: Colors.green.shade300,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text("Enter Your 4 Digit Code",style: GoogleFonts.lato(
               color:Color(0xFF181725) ,
            fontSize:24 ,
            fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            Text("Code",style: GoogleFonts.lato(
               color:Color(0xFF7C7C7C) ,
            fontSize:17 ,
            fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
          
               hintText: "      -  -  -  -  ",
              
               
               ),
            ),
            SizedBox(height: 90,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child: Text("Resend code",style: GoogleFonts.lato(color: Colors.green[400]),)),
                FloatingActionButton(
                    backgroundColor: Color(0xFF53B175),
                  onPressed: (){},child: Icon(Icons.arrow_forward_ios,size: 35,
    color: Colors.white,
),)
               
               
              ],
            )
          ],
        ),
      )
    );
  }
}
