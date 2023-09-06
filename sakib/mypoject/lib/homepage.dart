// ignore: unused_import
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mypoject/utill/cox.dart';
import 'package:mypoject/utill/hotel.dart';


class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Text("boking.com",style: TextStyle(fontSize: 20),),
                    Icon(Icons.shop),
              ],
            ),
          ),
           
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Container(
              height: 50,
               
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)

               ),
               
               child: Row(
               children: [
                Icon(Icons.search),
                Text("serch"),
               ],
               ),
             ),
           ),
             
             SizedBox(
              height: 20,
             ),
             
              Container(
                height: 300,
               child: PageView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   Cox(imageLocation: "assets/ba.jpg", imagetext:"coxbazar")
                 ],
               ),
               ),

              
                   
                
            
             
             SizedBox(
              height: 20,
             ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               
                 child: PageView(
                  
                  children:[  Cox(imageLocation: "assets/ba.jpg", imagetext:"coxbazar")]

              )
        ]),
      ),
    );
  }
}