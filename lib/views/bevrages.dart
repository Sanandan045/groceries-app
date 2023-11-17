import 'package:flutter/material.dart';

class BeveragesPage extends StatelessWidget {
  const BeveragesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Beverages"),
      //   centerTitle: true,
      //   leading: Icon(Icons.arrow_back_ios),
      //   leadingWidth: 60,
      //   actions: [
      //      IconButton(
      //     icon: Icon(
      //       Icons.filter_list,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       // do something
      //     },
      //   )
      //   ],
      // ),
      body: Container(
       
        height:300 ,
        width: 180,
        
        decoration: BoxDecoration(
          color: Colors.yellow[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Center(child: Image.asset("assets/images/coke.png")),
            
            Text("Diet Coke"),
            Text("355ml, Price"),
            SizedBox(height: 10,),
            Row(
              
              children: [
                Text("Rs 4.55"),
                SizedBox(width: 40,),
                 IconButton(
                  icon: Icon(
                  Icons.add_box_rounded,
                  color: Colors.green,
                  size: 30,
                  
                  ),
                  onPressed: () {
                  // do something
                  },
            )
                  
              ],
            )
          ],
        ),
      ),
    );
  }
}