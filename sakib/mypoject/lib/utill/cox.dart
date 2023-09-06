

import 'package:flutter/material.dart';


class Cox extends StatelessWidget {
  final String imageLocation;
  final String imagetext;
  const Cox({super.key, required this.imageLocation, required this.imagetext});

  @override
  Widget build(BuildContext context) {
    return  Column(
                     children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(imageLocation,fit: BoxFit.cover)),
                        SizedBox(
                          height: 15,
                        ),

                         Text(imagetext,style: TextStyle(fontSize: 25),),
                      ],
                    );


                  
  }
}