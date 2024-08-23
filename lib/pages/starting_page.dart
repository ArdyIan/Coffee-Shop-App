import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartingPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg_kopi.png'),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                "Fall in Love with Coffee in Blissful Delight!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: backgroundColor,
                  fontSize: 30,
                  fontWeight: semiBold,
                  letterSpacing: 1,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Welcome to our cozy coffee corner, where every cup is a delightful for you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: 15,
                        fontWeight: medium,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {},
                  child: Ink(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: backgroundColor1,
                          fontSize: 15,
                          fontWeight: semiBold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
