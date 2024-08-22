import 'dart:async';

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
        (() => Navigator.pushReplacementNamed(context, '/homepage')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_kopi.png'),
            fit: BoxFit.cover
            )
        ),
      )
    );
  }

}

