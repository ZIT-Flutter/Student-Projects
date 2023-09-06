// ignore_for_file: prefer_final_fields, unused_field

import 'dart:async';

import 'package:flutter/material.dart';

import '../pages/image.dart';

class MyPageViewWidget extends StatefulWidget {
  const MyPageViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyPageViewWidget> createState() => _MyPageViewWidgetState();
}

class _MyPageViewWidgetState extends State<MyPageViewWidget> {
  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageViewTimer();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      children: [
        image(iconimage: "assets/cellfin2.jpeg"),
        image(iconimage: "assets/cellfin3.jpeg"),
        image(iconimage: "assets/cellfin1.jpeg"),
      ],
    );
  }

  void pageViewTimer() {
    setState(() {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }
}
