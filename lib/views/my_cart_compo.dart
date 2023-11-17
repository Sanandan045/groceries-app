import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocrry/controllers/cart_controller.dart';
import 'package:grocrry/models/product_list.dart';

class CartItem extends StatelessWidget {
  // const CartItem({super.key});

  final int index;
  CartItem({
    Key?key,
    required this.index, required CartController controllers
  }):super(key: key);

  final CartController c =Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(right: 20,left: 10,),
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(5),
            //   color: Colors.amber,
            // ),
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(width: 10),
                Image.asset(Product.products[index].image,height: 60,width: 60,),
                Column(
                  
                  children: [
                    Container(
                      // color: Colors.blue,
                      height: 70,
                      width: 259,
                      child: ListTile(
                        title: Text(Product.products[index].name,style:GoogleFonts.lato(
          color: Color(0xFF181725),
          fontSize: 18,
          fontWeight: FontWeight.w600

        ),),
                        subtitle: Text('${Product.products[index].price}',style: GoogleFonts.lato(
          color: Color(0xFF181725),
          fontSize: 14,
          fontWeight: FontWeight.w400

        )),
                        trailing: Icon(Icons.cancel_sharp,size: 25,),
                      ),
                    ),
                   
                    Row(
                      
                      children: [
                        IconButton(onPressed: (){c.decrement(index);}, icon: Icon(Icons.indeterminate_check_box_outlined,color: Colors.green,size: 30,),),
                       
                       Obx(() =>  Text("${c.itemNumber.toString()}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
                       
                    IconButton(onPressed: (){c.increment(index);}, icon:     Icon(Icons.add_box,color: Colors.green,size: 30,),),
                        SizedBox(width: 50),
                        Text('${Product.products[index].price}',style: TextStyle(
          color: Color(0xFF181725),
          fontSize: 18,
          fontWeight: FontWeight.w500

        ))
                      
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
  }
}