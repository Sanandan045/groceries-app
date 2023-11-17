import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/widgets/primary_btn.dart';

class ProductDeatials extends StatelessWidget {
  const ProductDeatials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.ios_share))],
   
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: 400 ,
            color: Color(0xFFF2F3F2),
            child: Center(child: Image.asset("assets/images/Vector.png",height: 199,width: 329,)),
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text("Naturel Red Apple",style: GoogleFonts.lato(
              color: Color(0xFF181725),
              fontSize: 18,fontWeight: FontWeight.bold
            ),),
            subtitle: Text("1kg, Price",style: GoogleFonts.lato(
              color: Color(0xFF7C7C7C),
              fontSize: 15,fontWeight: FontWeight.w500
            ),),
            trailing: Icon(Icons.favorite_border),
          ),
          SizedBox(height: 10,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
              
          //       child: Row(
          //         children: [
          //           Text("-"),
          //           Text("1"),
          //           Text("+")
          //         ],
          //       ),
          //     ),
          //     Text("Rs 499"),
          
              
          //   ],
          // ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Product Details",style: GoogleFonts.lato(
              color: Color(0xFF181725),
              fontSize: 18,fontWeight: FontWeight.bold
            ),),
            subtitle: Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",style: GoogleFonts.lato(
              color: Color(0xFF7C7C7C),
              fontSize: 15,fontWeight: FontWeight.w500
            ),),
            trailing: Icon(Icons.arrow_drop_down),
          ),
           ListTile(
            title: Text("Nutritions as per 100gm ",style: GoogleFonts.lato(
              color: Color(0xFF181725),
              fontSize: 18,fontWeight: FontWeight.bold
            ),),
            
            trailing: Icon(Icons.arrow_drop_down_sharp),
          ),
           ListTile(
            title: Text("Review",style: GoogleFonts.lato(
              color: Color(0xFF181725),
              fontSize: 18,fontWeight: FontWeight.bold
            ),),
           
            trailing: Icon(Icons.arrow_drop_down_sharp),
          ),
         PrimaryBtn(btnName: "Add to Basket", bgColor: Colors.green, callback: (){})
      
      
        ]),
      ),
    );
  }
}