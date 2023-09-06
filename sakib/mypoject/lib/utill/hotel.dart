// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:mypoject/page_one.dart';
import 'package:mypoject/utill/newpage.dart';

class hotel extends StatelessWidget {
  final String iconImage;
  final String icontext;

  const hotel({required this.iconImage, required this.icontext, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (icontext == 'hotel') {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => newpage())));
            }
            else if(icontext=='car'){
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => PageOne())));

            }
          },
          child: Container(
            padding: EdgeInsets.all(20),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 20,
                    spreadRadius: 10,
                  )
                ]),
            child: Image.asset(iconImage),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          icontext,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
