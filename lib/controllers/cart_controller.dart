

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocrry/models/product_list.dart';

class CartController extends GetxController{

  

  // var itemNumber =1.obs;
   Rx<int> itemNumber = 0.obs;


 

  increment(int i){
     itemNumber.value++;
    itemNumber.refresh();
    
  }

    decrement(int i){

      if(itemNumber.value <=0){
       Get.snackbar("Buying Fruits", "can not be less then zero",icon: Icon(Icons.alarm),barBlur: 20,isDismissible: true,duration: Duration(seconds: 3));
      }
      else{
        itemNumber.value--;
         itemNumber.refresh();

      }
    
  }

  // void addProduct(Product product){


  // }



}

