import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindProduct extends StatelessWidget {
  List dataCL = [
    {"color": Colors.green[300]},
    {"color": Color(0x1AF8A44C)},
    {"color": Color(0xFFF7A593)},
    {"color": Color(0xFFD3B0E0)},
    {"color": Color(0x40FDE598)},
    {"color": Color(0x40B7DFF5)},
    {"color":Color(0x26836AF6)},
    {"color":Color(0x26D73B77)}
  ];
  List dataBrCl=[{"color": Colors.green},
    {"color": Color(0x1AF8A44C)},
    {"color": Color(0xFFF7A593)},
    {"color": Color(0xFFD3B0E0)},
    {"color": Color(0xFFD3B0E0)},
    {"color": Color(0xFFFDE598)},
    {"color":Color(0xFFB7DFF5)},
    {"color":Color(0x80D73B77)}];
    
    List imgList = [   
    'assets/images/pngfuel 6.png', 
    'assets/images/pngfuel 8.png', 
    'assets/images/pngfuel.png', 
    'assets/images/pngfuel 9.png',
    'assets/images/pngfuel 9.png',
    'assets/images/pngfuel 9.png',
    'assets/images/pngfuel 9.png',
    'assets/images/pngfuel 9.png',
    
    
    
  ];
  List txtList =[
    "Frash Fruits\n& Vegetable",
    "Cooking Oil\n& Ghee",
    "Meat & Fish",
    "Bakery & Snacks",
    "Dairy & Eggs",
     "Beverages",
      "Beverages",
       "Beverages"

  ];

  FindProduct({super.key});
  // const FindProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Products"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: dataCL[index]["color"],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 2, color: dataBrCl[index]["color"]),
                ),
                height: 140,
                width: 140,
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(imgList[index],height: 60,width: 60,),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    txtList[index],
                    style: GoogleFonts.podkova(
                        color: Color(0xFF181725),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
