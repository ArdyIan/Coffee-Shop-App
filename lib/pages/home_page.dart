import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 250,
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: SearchBar(),
                    ),
//kotakkan tengah gede
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 65, vertical: 20),
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, Index) {
                                  return Container(
                                    margin: EdgeInsets.all(5),
                                    width: 80,
                                    height: 45,
                                    decoration:
                                        BoxDecoration(color: backgroundColor),
                                  );
                                }),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.lightBlue,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.lightBlue,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.lightBlue,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.lightBlue,
                      )
                    ],
                  ),
                ],
              ),
            ),
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
