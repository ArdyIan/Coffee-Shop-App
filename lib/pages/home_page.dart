import 'package:coffee_shop/pages/widget/custom_Tabbar.dart';
import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    "All Coffee",
    "Machiato",
    "Latte",
    "Americano",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     margin: EdgeInsets.all(5),
      //     width: double.infinity,
      //     height: double.infinity,
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 60,
      //           width: double.infinity,
      //           child: ListView.builder(
      //               physics: BouncingScrollPhysics(),
      //               itemCount: items.length,
      //               scrollDirection: Axis.horizontal,
      //               itemBuilder: (context, index) {
      //                 return GestureDetector(
      //                   onTap: () {
      //                     current = index;
      //                   },
      //                   child: AnimatedContainer(
      //                     duration: Duration(milliseconds: 300),
      //                     margin: EdgeInsets.all(5),
      //                     width: 80,
      //                     height: 45,
      //                     decoration: BoxDecoration(color: backgroundColor),
      //                   ),
      //                 );
      //               }),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
//untuk mengatur warna background
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 325,
                    child: Container(
                      decoration: BoxDecoration(color: textColor),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 50, 10, 5),
                      child: Text(
                        "location",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: backgroundColor1,
                          fontSize: 15,
                          fontWeight: regular,
                        ),
                      ),
                    ),
//ini nanti ditambahin / diedit lagi
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                      child: Text(
                        "Blizen, Tanjungbalai",
                        style: TextStyle(
                          color: backgroundColor1,
                          fontSize: 15,
                          fontWeight: regular,
                        ),
                      ),
                    ),
//search bar
                    Container(
                      width: 500,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    flex: 4,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Search...",
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: InputBorder.none),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  // Container(
                                  //   height: 15,
                                  //   width: 1,
                                  //   color: Colors.black,
                                  // ),
                                  // IconButton(
                                  //     onPressed: () {},
                                  //     icon: Icon(
                                  //       Icons.tune,
                                  //       color: Colors.black,
                                  //     ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.tune,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
//kotakkan tengah gede
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 170,
                            width: 400,
                            child: Image.asset(
                              'assets/Banner.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
//kalo ada yang overflow di bagian bawah coba edit sizedbox disini
                      child: SizedBox(height: 550, child: CustomTabbar()),
                    )
                  ],
                ),
              ],
            ),
//4 kotakan display
//             Padding(
//               padding: EdgeInsets.all(30),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 115,
//                         width: 115,
//                         color: Colors.lightBlue,
//                       ),
// //jarak ditengah antar row
//                       SizedBox(
//                         width: 40,
//                       ),
//                       Container(
//                         height: 115,
//                         width: 115,
//                         color: Colors.lightBlue,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 115,
//                         width: 115,
//                         color: Colors.lightBlue,
//                       ),
//                       SizedBox(
//                         width: 40,
//                       ),
//                       Container(
//                         height: 115,
//                         width: 115,
//                         color: Colors.lightBlue,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 25,
                  color: Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.heart_broken_sharp,
                  size: 25,
                  color: Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.backpack,
                  size: 25,
                  color: Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 25,
                  color: Colors.grey.shade400,
                )),
          ],
        ),
      ),
    );
  }
}
