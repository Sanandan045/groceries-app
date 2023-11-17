import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  
  const MySquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: ListTile(
        leading: Image.asset("assets/images/coke.png"),
        title: Text("Coke can",style: TextStyle(
          color: Color(0xFF181725),
          fontSize: 18,
          fontWeight: FontWeight.w500

        ),
        ),
        subtitle: Text("25ml ,price",style: TextStyle(
          color: Color(0xFF181725),
          fontSize: 14,
          fontWeight: FontWeight.w400

        )),
        trailing: Text("Rs 50",style: TextStyle(
          color: Color(0xFF181725),
          fontSize: 18,
          fontWeight: FontWeight.w500

        )),
      ),
    );
  }
}