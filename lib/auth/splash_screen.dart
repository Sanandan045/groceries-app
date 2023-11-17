import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/auth/onborading.dart';

class SpalshScrren extends StatefulWidget {
  const SpalshScrren({super.key});

  @override
  State<SpalshScrren> createState() => _SpalshScrrenState();
}

class _SpalshScrrenState extends State<SpalshScrren> {

  @override
  void initState() {
    
    super.initState();

    Timer(Duration(seconds: 5), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboradingScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: Text("N E C T A R",style: GoogleFonts.lato(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}