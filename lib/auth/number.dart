import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NumberS extends StatelessWidget {
  const NumberS({super.key});

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
            Text("Enter Your Mobile Number",style: GoogleFonts.lato(
               color:Color(0xFF181725) ,
            fontSize:24 ,
            fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            Text("Mobile Number",style: GoogleFonts.lato(
               color:Color(0xFF7C7C7C) ,
            fontSize:17 ,
            fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
          
               hintText: "   +91 ",
               prefixIcon: Icon(Icons.phone_iphone)
              
               
               ),
            ),
            SizedBox(height: 90,),
            Align(
               alignment: Alignment.centerRight,
              child:FloatingActionButton(
                    backgroundColor: Color(0xFF53B175),
                  onPressed: (){},child: Icon(Icons.arrow_forward_ios,size: 30,
    color: Colors.white,
),) ,
            )
             
           
          ],
        ),
      ),

    );
  }
}