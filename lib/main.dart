import 'package:ecommerceapp/router.dart';
import 'package:ecommerceapp/view/screen/Splash%20Screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: const  SplashScreen(),
    );
  }
}
