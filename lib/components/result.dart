import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score = 0;
  final VoidCallback resetQuiz;
  Result(this.score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Thanks for attempting!\n Your score is $score",
              style: const TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text("Re-Start the Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
