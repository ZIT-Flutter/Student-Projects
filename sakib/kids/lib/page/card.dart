
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mycard extends StatelessWidget {
   final double balance;
  final int number;
  final int month;
  final Color;
  const mycard({
   Key?key,
    required this.balance,
    required this.number,
    required this.month,
    required this.Color,
    }):super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
                  width: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:Color,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                    Text("balance",style:TextStyle(color: Colors.white,fontSize: 22,) ,),
                    SizedBox(
                      height:10,
                    ),
                    Text("\$"+balance.toString(),style: TextStyle(fontSize:35,color: Colors.white),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(number.toString(),style: TextStyle(color: Colors.white, fontSize: 18,),),
                        Text(month.toString(),style: TextStyle(color:Colors.white,fontSize: 18),),
                        
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
    );
  }
}