import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " hi, sakib!",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "28/july/2023",
                      style: TextStyle(color: Colors.blue[200]),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                      "search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " how do you fell",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Icon(Icons.more_horiz,color: Colors.white,),
              ],
            ),
               
                     SizedBox(
                      height:20,
                     ),

            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
 
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),


                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
