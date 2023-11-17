import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocrry/views/bevrages.dart';
import 'package:grocrry/views/card.dart';
import 'package:grocrry/views/explore.dart';
import 'package:grocrry/views/explore_gridItem.dart';
import 'package:grocrry/views/my_cart.dart';

class HomeeePage extends StatelessWidget {
  Widget singlProducts(String textToShow, String unit, String price) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 200,
      width: 169,
      decoration: BoxDecoration(
          color: Color(0x00000000),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFE2E2E2), width: 1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(child: Image.asset("assets/images/apple1.png")),
            SizedBox(
              height: 10,
            ),
            Text(
              textToShow,
              style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              unit,
              style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.green,
                    ))
              ],
            )

            // Expanded(child: child),
          ],
        ),
      ),
    );
  }

  const HomeeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(Icons.cake),
              SizedBox(
                height: 10,
              ),
              Text("Location Name"),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search Store",
                    fillColor: Color(0xFFF2F3F2),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: 366,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  "assets/images/orgenicfruit.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Special Offer",
                  style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Text(" Sell all"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singlProducts("product Name1", "1ml", "4.99"),
                    singlProducts("product Name2", "2ml", "4.99"),
                    singlProducts("product Name3", "3ml", "4.99"),
                    singlProducts("product Name4", "4ml", "4.99"),
                  ],
                ),
              ),
              ListTile(
                title: Text("Special Offer"),
                trailing: Text(" Sell all"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singlProducts("product Name1", "1ml", "4.99"),
                    singlProducts("product Name2", "2ml", "4.99"),
                    singlProducts("product Name3", "3ml", "4.99"),
                    singlProducts("product Name4", "4ml", "4.99"),
                  ],
                ),
              ),
              ListTile(
                title: Text("Special Offer"),
                trailing: Text(" Sell all"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Color(0xFFF8A44C),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        Image.asset("assets/images/plues.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pluses",
                          style: TextStyle(
                              color: Color(0xFF3E423F),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Color(0xFF53B175),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        Image.asset("assets/images/rice.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rices",
                          style: TextStyle(
                              color: Color(0xFF3E423F),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singlProducts("product Name1", "1ml", "4.99"),
                    singlProducts("product Name2", "2ml", "4.99"),
                    singlProducts("product Name3", "3ml", "4.99"),
                    singlProducts("product Name4", "4ml", "4.99"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
          gap: 8,
          backgroundColor: Color(0xFFFFFFFF),
          activeColor: Colors.green,
          iconSize: 20,
          onTabChange: (value) {},
          tabs: [
            GButton(
              icon: Icons.store,
              onPressed: () {
                return;
              },
            ),
            GButton(
                icon: Icons.search,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FindProduct()));
                }),
            GButton(
                icon: Icons.shopping_cart,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MYCART()));
                  
                }),
            GButton(
              icon: Icons.favorite_border,
              onPressed: () {
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cardd()));
              },
            ),
            GButton(
              icon: Icons.person,
            )
          ]),
    );
  }
}
