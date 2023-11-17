import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocrry/auth/login.dart';
import 'package:grocrry/auth/number.dart';
import 'package:grocrry/auth/onborading.dart';
import 'package:grocrry/auth/sign_in.dart';
import 'package:grocrry/auth/sign_up.dart';
import 'package:grocrry/auth/splash_screen.dart';
import 'package:grocrry/auth/verification.dart';
import 'package:grocrry/views/demo.dart';
import 'package:grocrry/views/explore.dart';
import 'package:grocrry/views/homee.dart';
import 'package:grocrry/views/my_cart.dart';
import 'package:grocrry/views/product_detials.dart';











void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: ProductDeatials()
    );
  }
}
