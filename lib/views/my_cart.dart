// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/controllers/cart_controller.dart';
import 'package:grocrry/models/product_list.dart';
import 'package:grocrry/views/my_cart_compo.dart';
import 'package:grocrry/views/order_acepted.dart';
import 'package:grocrry/widgets/primary_btn.dart';

class MYCART extends StatelessWidget {
  const MYCART({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("MY Cart",style: GoogleFonts.lato(
          color: Color(0xFF181725),
          fontSize: 20,
          fontWeight: FontWeight.w600

        ),)),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView.separated(itemCount: Product.products.length,
           itemBuilder: (context, index) {
            
            return CartItem( index:index,controllers:CartController());
          },
          separatorBuilder: (context, index) { // <-- SEE HERE
            return Divider(height: 20,thickness: 0.5,);
          },),
         
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          
              PrimaryBtn(btnName: "Go Checkout", bgColor: Color(0xFF53B175), callback: (){

                showModalBottomSheet(context: context, builder: (context){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
              
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text("Checkout",style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 20,fontWeight: FontWeight.bold
            ),),
                    trailing: Icon(Icons.cancel_rounded)
                  ),
                   ListTile(
                    title: Text("Delivery",style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 15,fontWeight: FontWeight.normal
            ),),
                    trailing: Text("Select Method  >",style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 14,fontWeight: FontWeight.bold
            ),),
                  ), ListTile(
                    title: Text("Payment",style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 15,fontWeight: FontWeight.normal
            )),
                    trailing: Text("UPI  >"),
                  ), ListTile(
                    title: Text("Promo Code",style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 15,fontWeight: FontWeight.normal
            )),
                    trailing: Text("Pick Discount >",style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 14,fontWeight: FontWeight.bold
            ),),
                  ),ListTile(
                    title: Text("Total Cost",style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 15,fontWeight: FontWeight.normal
            )),
                    trailing: Text("\$ 5.99 >",style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 14,fontWeight: FontWeight.bold
            ),),
                  ),
          
                  ListTile(subtitle: Text("By placing an order you agree to our\nTerms And Conditions"),),
                  SizedBox(height: 10,),
             
            PrimaryBtn(btnName: "Palced Order", bgColor: Color(0xFF53B175), callback: (){
              Get.to(OrderAcepeted());
            })
                ],
              ),
            );
          },);



              })
                  
                ],
              ),
            ),
            
            
            
            
          

          
          ],
          
        ));
  }
}
