
 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class secondpage extends StatelessWidget {
  final String IconImage;
  final String IconText;
  const secondpage({super.key, required this.IconImage, required this.IconText});

  @override
  Widget build(BuildContext context) {
    return Column(
                      children: [
                        Container(

                          height:90,
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)

                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                              ),
                              child: Image.asset(IconImage)),
                          ),
                        ),

                          Text(IconText,style: TextStyle(fontSize: 15),),
                      ],
                    );
  }
}