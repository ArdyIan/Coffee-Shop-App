import 'package:coffee_shop/pages/detail_product.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:coffee_shop/pages/order.dart';
import 'package:coffee_shop/pages/splash_page.dart';
import 'package:coffee_shop/pages/starting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/starting': (context) => StartingPage(),
        '/homepage' : (context) => HomePage(),
        '/detailproduct' : (context) => detailProduct(),
        '/order' : (context) => Order(),
      },
    );
  }
}
