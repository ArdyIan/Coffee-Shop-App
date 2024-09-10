import 'package:coffee_shop/pages/order.dart';
import 'package:coffee_shop/pages/widget/tabbar_size.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/theme.dart';
import 'package:readmore/readmore.dart';

class detailProduct extends StatefulWidget {
  const detailProduct({super.key});

  @override
  State<detailProduct> createState() => _detailProductState();
}

class _detailProductState extends State<detailProduct> {
  String text =
      ' minuman kopi khas Italia yang dibuat dari espreso dan susu, tetapi referensi lain juga ada yang menyebutkan bahwa kapucino berawal dari biji biji kopi tentara Turki yang tertinggal setelah peperangan yang dipimpin oleh Kara Mustapha Pasha di Wina, Austria melawan tentara gabungan Polandia-Jerman.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              width: 500,
                              color: buttonColor,
                              child: Image.asset(
                                'assets/coffee1lebar.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      //icehot 3 logo
                      Text(
                        "Caffe Mocha",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text(
                                "Ice/Hot",
                                // textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: regular,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      // color: buttonColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    'assets/iconmotor.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      // color: buttonColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    'assets/iconsusu.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      // color: buttonColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    'assets/iconkopi.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                      //rating
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                // color: buttonColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.star,
                              size: 30,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.8",
                            // textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "(230)",
                            // textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: regular,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        height: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(17),
                        child: ReadMoreText(
                          text,
                          trimLines: 5,
                          textAlign: TextAlign.justify,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show More',
                          trimExpandedText: 'Show Less',
                          lessStyle: TextStyle(
                            fontWeight: semiBold,
                            color: buttonColor,
                          ),
                          moreStyle: TextStyle(
                            fontWeight: semiBold,
                            color: buttonColor,
                          ),
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Size",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: semiBold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        //kalo ada yang overflow di bagian bawah coba edit sizedbox disini
                        child: SizedBox(height: 100, child: tabbarSize()),
                      )
                    ],
                  ),
                ),
                // SizedBox(height: 50,),
                SizedBox(
                  width: 400,
                  height: 90,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/homepage');
                              },
                              icon: Icon(Icons.arrow_back)),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Text(
                                "Detail",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                // color: buttonColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(
                              'assets/heart.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      "Rp 45.000",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: semiBold,
                          color: buttonColor),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Order()));
                  },
                  child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: semiBold,
                              color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
