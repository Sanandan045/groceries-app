
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocrry/views/card.dart';
import 'package:grocrry/views/explore.dart';
import 'package:grocrry/views/explore_gridItem.dart';
import 'package:grocrry/views/homee.dart';
import 'package:grocrry/views/my_cart.dart';

class MyBTNNAV extends StatelessWidget {

  int _slecetedIndex =0;
  static const List<Widget> _widgetOptions =<Widget>[
    HomeeePage(),
    ExploreView(),
    MYCART(),

  ];
  
   MyBTNNAV({super.key});
  

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_slecetedIndex),
    
      bottomNavigationBar: GNav(
        gap: 8,
        backgroundColor: Color(0xFFFFFFFF),
        activeColor: Colors.green,
        iconSize: 20,
        
        
        tabs: [
         GButton(icon: Icons.store, ),
        GButton(icon: Icons.search,),
        GButton(icon: Icons.shopping_cart,),
         GButton(icon: Icons.favorite_border,),
          GButton(icon: Icons.person,)
      ],
      selectedIndex: _slecetedIndex,
      onTabChange:(index){
        ((){
          _slecetedIndex =index;
        });
      }
      ),
    );
  }
  

  

}


