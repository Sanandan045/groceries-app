import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bevrages"),
        centerTitle: true,
      ),
      body: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < 5; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(12),boxShadow: [
  BoxShadow(
    color: Colors.grey.shade600,
    spreadRadius: 1,
    blurRadius: 2
  )
]),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/coke.png",height: 80,width: 45,),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Coke This",
                    style: GoogleFonts.lato(
                        color: Color(0xFF181725),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "355ml, Price",
                  style: GoogleFonts.poppins(
                      color: Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rs 50",style: TextStyle(
          color: Color(0xFF181725),
          fontSize: 18,
          fontWeight: FontWeight.w500

        )),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            child: Icon(Icons.add_box,size: 30,color: Colors.green,),
          ),
        )

                    
                  ],
                ),
              )
            ]),
          )
      ],
    ),
    );
  }
}
