import 'dart:async';

import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),
        (() => Navigator.pushReplacementNamed(context, '/starting')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: buttonColor2,
        body: Center(
          child: RichText(text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Coffee', style: title1
              ),
              TextSpan(
                text: 'Shop',
                style: TextStyle(
                  color: buttonColor2,
                  fontWeight: semiBold,
                  fontSize: 50,
                )
              )
            ]
          )),
        ),

      // body : Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/bg_kopi.png'),
      //       fit: BoxFit.cover
      //       )
      //   ),
      // )
    );
  }

}

