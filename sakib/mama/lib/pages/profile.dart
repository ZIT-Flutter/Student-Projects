// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mama/pages/image.dart';
import 'package:mama/pages/secondpage.dart';

import '../widgets/pageview_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                height: 60,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "assets/cellfin.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.backspace,
                                      size: 32,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Container(
                height: 600,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      child: Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            secondpage(
                                IconImage: "assets/bill.png",
                                IconText: "cass out"),
                            secondpage(
                                IconImage: "assets/money.png",
                                IconText: "send money"),
                            secondpage(
                                IconImage: "assets/send.png",
                                IconText: "send money"),
                            secondpage(
                                IconImage: "assets/money.png",
                                IconText: "money")
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            secondpage(
                                IconImage: "assets/bill.png",
                                IconText: "cass out"),
                            secondpage(
                                IconImage: "assets/money.png",
                                IconText: "send money"),
                            secondpage(
                                IconImage: "assets/send.png",
                                IconText: "send money"),
                            secondpage(
                                IconImage: "assets/money.png",
                                IconText: "money")
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            secondpage(
                                IconImage: "assets/bill.png",
                                IconText: "cass out"),
                            secondpage(
                                IconImage: "assets/money.png",
                                IconText: "send money"),
                            secondpage(
                                IconImage: "assets/send.png",
                                IconText: "send money"),
                            secondpage(
                                IconImage: "assets/money.png",
                                IconText: "money")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: MyPageViewWidget(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
