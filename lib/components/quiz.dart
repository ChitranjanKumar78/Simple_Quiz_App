import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  var questions;
  final Function ansText;
  int index = 0;

  Quiz(@required this.questions, @required this.ansText, @required this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Center(
                child: Text(
                  questions[index]["question"],
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ...(questions[index]["answer"] as List<Map<String, Object>>)
                .map((e) {
              return SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => ansText(e["score"]),
                    child: Text(
                      e["text"] as String,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ));
            }).toList(),
          ],
        ));
  }
}
