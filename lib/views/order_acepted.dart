import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/views/homee.dart';
import 'package:grocrry/widgets/primary_btn.dart';


class OrderAcepeted extends StatelessWidget {
  const OrderAcepeted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.white,
              child: Image.asset("assets/images/Group 6871.jpg"),
           
            ),
            SizedBox(height: 20,),
            Text("Your Order has been\n accepted",style: TextStyle(
              color: Color(0xFF181725),
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),),
            SizedBox(height: 20,),
            Text("Your items has been placcd and is on \nit’s way to being processed",style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w500,
                fontSize: 15
              ),),
              SizedBox(height: 90,),
              PrimaryBtn(btnName: "Track Order", bgColor: Colors.green, callback: (){}),
            SizedBox(height: 30,),
           TextButton(onPressed: (){
            Get.to(HomeeePage());
           }, child: Text("Back To Home",style: GoogleFonts.lato(color: Color(0xFF181725),
              fontWeight: FontWeight.bold,
              fontSize: 18 ),))
            
          ]),
        ),
      ),
    );
  }
}