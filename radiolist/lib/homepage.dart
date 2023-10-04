// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:radiolist/allquiz.dart';
import 'package:radiolist/quiz_test.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemCount: allQuiz.length,
              itemBuilder: (context, quizIndex) => Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  child: Column(
                    children: [
                      Text(allQuiz[quizIndex].question),
                      AnswerListWidget(
                          answerList: allQuiz[quizIndex].answerList)
                    ],
                  ),
                ),
              ),
            )),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }
}
