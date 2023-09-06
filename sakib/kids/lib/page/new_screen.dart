import 'package:flutter/material.dart';


class NewScreen extends StatelessWidget {
  final String pageName;
  const NewScreen({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageName)),
      body: Center(child: Text(pageName),));
  }
}