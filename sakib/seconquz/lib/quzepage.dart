import 'package:flutter/material.dart';
import 'package:seconquz/model.dart';
import 'package:seconquz/result.dart';

class QuzePage extends StatefulWidget {
  QuzePage({super.key});

  @override
  State<QuzePage> createState() => _QuzePageState();
}

class _QuzePageState extends State<QuzePage> {
  int quzeindex = 0;
  int? selactinindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(AllQuze[quzeindex].qution),
            ListView.builder(
              shrinkWrap: true,
              itemCount: AllQuze[quzeindex].anwserlist.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selactinindex = index;
                    });
                  },
                  child: Card(
                    color: index == selactinindex ? Colors.red : Colors.green,
                    child: Text(
                      AllQuze[quzeindex].anwserlist[index].answer,
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {

                  if(AllQuze[quzeindex].anwserlist[selactinindex!].iscorect== true){
                    setState(() {
                      selactinindex 
                    });
                  }
                  if (quzeindex < AllQuze.length - 1) {
                    setState(() {
                      quzeindex++;
                      selactinindex = null;
                    });
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Resul(),
                        ));
                  }
                },
                child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
