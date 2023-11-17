import 'package:flutter/material.dart';

class Bottom_SheetPage extends StatelessWidget {
  const Bottom_SheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
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
                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF53B175),
              minimumSize: Size(327, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              elevation: 0,
            ), child: Text(" Add to Basket",style: TextStyle(
              color: Color(0xFFFFF9FF),
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),)),
                ],
              ),
            );
          },);
          
        },child: Text("Toch me"),),
      ),
      
    );
  }
}