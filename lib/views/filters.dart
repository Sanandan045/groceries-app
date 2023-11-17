import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        centerTitle: true,
        leading: Icon(Icons.cancel_rounded),
      ),
      body: Container(
        height: 792,
        width: 415,
        decoration: BoxDecoration(
            color: Color(0xFFF2F3F2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 15),
                  child: Text("Categories",style: GoogleFonts.lato(
                    color: Color(0xFF181725),
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.check_box),
                    title: Text("Egg",style: GoogleFonts.lato(
                      color: Color(0xFF181725),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text("Noodles & Pasta",style: GoogleFonts.lato(
                      color: Color(0xFF181725),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text("Chips & Crips",style: GoogleFonts.lato(
                      color: Color(0xFF181725),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 15),
                  child: Text("Brands",style: GoogleFonts.lato(
                    color: Color(0xFF181725),
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text("Individual Collection",style: GoogleFonts.lato(
                      color: Color(0xFF181725),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text("Cocola",style: GoogleFonts.lato(
                      color: Color(0xFF181725),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF53B175),
                              minimumSize: Size(327, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              ),
                              elevation: 0,
                            ), child: Text(" Apply Filters",style: TextStyle(
                              color: Color(0xFFFFF9FF),
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                            ),)),
                  ),
                ),
                         
              ],
            )
      ),
    );
  }
}
