// ignore: file_names


// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kids/page/card.dart';
import 'package:kids/page/money.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class HomePage extends StatelessWidget {
   HomePage({super.key});
  
  get child => null;
  final _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomAppBar(child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon:Icon(Icons.home,size: 32,color:Colors.pink,),),
          IconButton(onPressed: (){}, icon:Icon(Icons.settings,size: 32,color: Colors.pink ,),)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.money_off_rounded),
        backgroundColor:(Colors.pink),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      

      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("my",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight:FontWeight.bold,),),
                    Text("app",style:TextStyle(fontSize:25,color: Colors.black),),
                  ],
                ),
               Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape:BoxShape.circle,
                ),
                child: Icon(Icons.add),
               )
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
            

            Container(
              height: 200,
              child: PageView(
                scrollDirection:Axis.horizontal,
                controller: _controller,
                children: [
                  mycard(
                    balance:232.43,
                    number:3443,
                    month: 12,
                    Color: Colors.green[300],
                  ),
                  mycard( 
                    balance:432.34,
                    number:2743,
                    month: 32,
                    Color: Colors.blue[300],
                    ),
                  mycard(
                     balance:432.43,
                    number:3543,
                    month: 92,
                    Color: Colors.deepPurple[300],
                  ),
                ],
              ),
            ),
             
              SizedBox(
              height: 20,
            ),

            SmoothPageIndicator(controller: _controller, count: 3,
            effect: ExpandingDotsEffect(),
            ),
            SizedBox(
              height: 20,
            ),
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mymoney(iconimage: "assets/money.png", textbutton:"money"),
               mymoney(iconimage: "assets/send.png", textbutton:"send"),
              mymoney(iconimage:"assets/bill.png", textbutton: "bill")
            ],
          ),
            
            SizedBox(
              height:25,
            ),
            
          
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Row(
                  children: [
                    Container(
                     height: 100,
                     padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
              
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                      child: Image.asset("assets/shear.png"),
                    ),
                     SizedBox(
                      width:10,
                     ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Text("your business",style: TextStyle(fontSize:25),),
                          SizedBox(
                            height: 20,
                          ),
                          Text("How can you that your business",style: TextStyle(color: Colors.grey),),
                         ],
                        ),

                        Icon(Icons.arrow_forward_ios)
                        
                      ],
                    )
                  ],
              ),
               ),

                 SizedBox(
                      height:25,
                     ),
               
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Row(
                  children: [
                    Container(
                     height: 100,
                     padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
              
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                      child: Image.asset("assets/taka.png"),
                    ),
                     SizedBox(
                      width:10,
                     ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Text("your business",style: TextStyle(fontSize:25),),
                          SizedBox(
                            height: 20,
                          ),
                          Text("How can you that your business",style: TextStyle(color: Colors.grey),),
                         ],
                        ),

                        Icon(Icons.arrow_forward_ios)
                        
                      ],
                    )
                  ],
              ),
               ),
            
            
          
         
        ]),
      ),
    );
  }
}