import 'package:flutter/material.dart';
import 'package:kids/page/new_screen.dart';

class mymoney extends StatelessWidget {
  final String iconimage;
  final String textbutton;
  const mymoney({
    Key? key,
    required this.iconimage,
    required this.textbutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            print(textbutton);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewScreen(pageName: textbutton)));   
          },
          child: Container(
            height: 100,
            padding: EdgeInsets.all(20),
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
            child: Center(
              child: Image.asset(iconimage),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          textbutton.toString(),
          style: TextStyle(color: Colors.grey[700], fontSize: 18),
        ),
      ],
    );
  }
}
