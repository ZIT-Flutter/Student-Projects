// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizapp/file.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  int quizIndex = 0;
  int? selactionindex;
  Color secactioncolor = Colors.pink;
  int scor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text("${quizIndex + 1}/  ${allquiz.length}"),
            Text(
              allquiz[quizIndex].quiztext,
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: allquiz[quizIndex].anserList.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selactionindex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: index == selactionindex
                            ? secactioncolor
                            : Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                              child: Text(
                                  allquiz[quizIndex].anserList[index].answer)),
                        ),
                      ),
                    ),
                  );
                })),
            ElevatedButton(
                onPressed: () async {
                  if (selactionindex != null) {
                    if (allquiz[quizIndex]
                            .anserList[selactionindex!]
                            .iscrorect ==
                        true) {
                      scor += 10;
                      setState(() {
                        secactioncolor = Colors.green;
                      });
                    } else {
                      setState(() {
                        secactioncolor = Colors.red;
                      });
                    }

                    await Future.delayed(Duration(seconds: 2));

                    if (quizIndex < allquiz.length - 1) {
                      setState(() {
                        quizIndex++;
                        selactionindex = null;
                      });
                    }
                  }
                },
                child: Text("submit")),
            SizedBox(
              height: 60,
            ),
            Text("your $scor")
          ],
        ),
      ),
    );
  }
}
