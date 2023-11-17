import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/views/mysquare.dart';

class Cardd extends StatelessWidget {
  const Cardd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite",style: GoogleFonts.lato(
          color: Color(0xFF181725),
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),),
        centerTitle: true,
        
      ),
      body: ListView.separated( // <-- SEE HERE
  itemCount: 10,
  itemBuilder: (context, index) {
    return MySquare();
  },
  separatorBuilder: (context, index) { // <-- SEE HERE
    return Divider(height: 20,thickness: 0.5,);
  },
)
    );
  }
}