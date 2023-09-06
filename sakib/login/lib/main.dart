// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/secondpage.dart';

void main() {
  runApp(const MyApp());
}

TextEditingController controller = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool validate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorText:
                      validate == false ? 'Please Input Long name' : null),
            ),
            ElevatedButton(
                onPressed: () {
                  if (controller.text.length >= 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Secondpage(),
                        ));
                  } else {
                    setState(() {
                      validate = false;
                    });
                  }

                  // if(controller.text)
                },
                child: Text("save")),
          ],
        ),
      ),
    );
  }
}
