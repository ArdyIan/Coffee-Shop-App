import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class tab_Bar3 extends StatelessWidget {
  const tab_Bar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 115,
                    width: 115,
                    color: Colors.lightBlue,
                    child: Image.asset(
                      'assets/coffee1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
//teks dibawah container
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Caffe Mocha",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Deep Foam",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: regular,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 115,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp 50.000",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: semiBold,
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
//jarak ditengah antar row
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 115,
                    width: 115,
                    color: Colors.lightBlue,
                    child: Image.asset(
                      'assets/coffee2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
//teks dibawah container
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Flat White",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Espresso",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: regular,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 115,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp 45.000",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: semiBold,
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 115,
                    width: 115,
                    color: Colors.lightBlue,
                    child: Image.asset(
                      'assets/coffee3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
//teks dibawah container
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Machiato",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Deep Foam",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: regular,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 115,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp 45.000",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: semiBold,
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 115,
                    width: 115,
                    color: Colors.lightBlue,
                    child: Image.asset(
                      'assets/coffee4.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
//teks dibawah container
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Moccachino",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Container(
                  width: 115,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Espresso",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: regular,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 115,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp 50.000",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: semiBold,
                          ),
                        ),
                        
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          
          ],
        ),
      ],
    );
  }
}