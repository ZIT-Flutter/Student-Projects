import 'package:flutter/material.dart';

import 'package:radiolist/allquiz.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

int score = 0;

class AnswerListWidget extends StatefulWidget {
  List<Answer> answerList;

  AnswerListWidget({super.key, required this.answerList});

  @override
  State<AnswerListWidget> createState() => _AnswerListWidgetState();
}

class _AnswerListWidgetState extends State<AnswerListWidget> {
  int? selection;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.answerList.length,
        itemBuilder: (context, answerIndex) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // print('Quiz No: $quizIndex, Selected : $answerIndex');
                print('Answer Index: $answerIndex');
                setState(() {
                  selection = answerIndex;

                  if (allQuiz[0].answerList[answerIndex].isCorrect == true) {
                    score += 10;
                    print(score);
                  }
                });
              },
              child: Container(
                height: 15,
                width: double.infinity,
                color: selection == answerIndex ? Colors.amber : Colors.red,
                child: Center(
                  child: Text(widget.answerList[answerIndex].answer),
                ),
              ),
            ),
          );
        });
  }
}
