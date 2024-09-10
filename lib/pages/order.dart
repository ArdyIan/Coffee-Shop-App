import 'package:coffee_shop/pages/delivery_page.dart';
import 'package:coffee_shop/pages/detail_product.dart';
import 'package:coffee_shop/pages/order.dart';
import 'package:coffee_shop/pages/widget/tabbar_size.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<String> items = [
    "Deliver",
    "Pick Up",
  ];
  int current = 0;

//data untuk add item number
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
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
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  margin: EdgeInsets.all(5),
                                  width: 160,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: current == index
                                        ? buttonColor
                                        : Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10),
                                    // border: current == index
                                    //     ? Border.all(
                                    //         color: Colors.deepPurpleAccent,
                                    //         width: 2)
                                    //     : null,
                                  ),
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivary Address",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Jl. Kpg Sutoyo",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: regular,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      // color: buttonColor,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Icon(
                                          Icons.note_alt_outlined,
                                          size: 18,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Edit Address',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: regular,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      // color: buttonColor,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Icon(
                                          Icons.notes_outlined,
                                          size: 18,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          'Add Note',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: regular,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
//
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      color: Colors.lightBlue,
                                      child: Image.asset(
                                        'assets/coffee1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),

                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Caffee Mocha",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: semiBold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Deep Foam",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: regular,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ]),

                                  //add item number
                                ],
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              number++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 14,
                                          )),
                                      Text(
                                        number.toString(),
                                        style: TextStyle(
                                            fontSize: 14, fontWeight: semiBold),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (number > 0) {
                                                number--;
                                              }
                                              print('Number decreament');
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            size: 14,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 375,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                              ),
                              Center(
                                child: Text(
                                  '1 Discount is Applies',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: regular,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Summary",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: regular,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Rp 45000",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: regular,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivary Fee",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: regular,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Rp 4000",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: regular,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ])
                      // Column(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 20),
                      //       child: Text(
                      //         "Delivary Address",
                      //         style: TextStyle(
                      //           fontSize: 15,
                      //           fontWeight: semiBold,
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      //     Text(
                      //       "Jl. Kpg Sutoyo",
                      //       style: TextStyle(
                      //         fontSize: 15,
                      //         fontWeight: semiBold,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
//kode buat properti di paling atas
                // SizedBox(height: 50,),
                SizedBox(
                  width: 400,
                  height: 90,
                  child: Container(
                    color: Colors.white,
                    height: 90,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/detailproduct');
                              },
                              icon: Icon(Icons.arrow_back)),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Order",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    // color: buttonColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  'assets/Wallet.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cash/Wallet",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                  Text(
                                    "Rp 49000",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: semiBold,
                                        color: buttonColor),
                                  ),
                                  // SizedBox(
                                  //   width: 20,
                                  // ),
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Order()));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeliveryPage()));
                      },
                      child: Container(
                          width: 400,
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
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
