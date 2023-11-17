import 'package:flutter/material.dart';


class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "eg Egg",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.yellow,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none
                  )
                ),
                
              ),
            ),
            SizedBox(height: 20,),
           
          ],
        ),
      ),
    );
  }
}