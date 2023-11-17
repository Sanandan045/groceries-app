import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
  itemCount: 100,
  itemBuilder: (context, index) {return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          
          decoration: BoxDecoration(
            color: Colors.green[200],
            
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1,color: Colors.green ),
          ),
          height: 140,
          width: 150,
          child: Column(children: [
            SizedBox(height: 20,),
            Image.asset("assets/images/coke.png"),
            SizedBox(height: 10,),
            Text("Frash Fruits\n& Vegetable",style: GoogleFonts.poppins(
              color: Color(0xFF181725),
              fontWeight: FontWeight.w400,
              fontSize: 16
            ),)
          ]),
        ),
      );} ,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 2,
  ),
);
  }
}