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
        (() => Navigator.pushReplacementNamed(context, '/starting'))
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 200,
                width: 200,
                // color: Colors.lightBlue,
                child: Image.asset(
                  'assets/logokopi.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: 'Coffee',
                style: TextStyle(color: Colors.black, fontSize: 50,
                fontWeight: semiBold
                )),
            TextSpan(
                text: ' Shop',
                style: TextStyle(color: Colors.black, fontSize: 50,
                fontWeight: semiBold
                )
                // style: title1
                // TextStyle(
                //   color: buttonColor2,
                //   fontWeight: semiBold,
                //   fontSize: 50,
                // )
                )
          ])),
        ],
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
