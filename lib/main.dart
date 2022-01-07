import 'package:first_app/components/quiz.dart';
import 'package:first_app/components/result.dart';
import 'package:flutter/material.dart';
import './components/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  var totalScore = 0;

  var quesList = [
    {
      "question": "(1) Which is a animal?",
      "answer": [
        {"text": "Dog", "score": 10},
        {"text": "Hat", "score": 0},
        {"text": "Desktop", "score": 0},
        {"text": "Cat", "score": 10}
      ]
    },
    {
      "question": "(2) Which is a food product?",
      "answer": [
        {"text": "Rice", "score": 10},
        {"text": "Tea", "score": 10},
        {"text": "Pen", "score": 10},
        {"text": "Cat", "score": 0}
      ]
    },
    {
      "question": "(3) Which is a computer component?",
      "answer": [
        {"text": "Cap", "score": 10},
        {"text": "Mug", "score": 0},
        {"text": "Keyboard", "score": 10},
        {"text": "CPU", "score": 10}
      ]
    },
    {
      "question": "(4) Which is a study material?",
      "answer": [
        {"text": "Book", "score": 10},
        {"text": "Hat", "score": 0},
        {"text": "Desktop", "score": 10},
        {"text": "Cat", "score": 10}
      ]
    },
    {
      "question": "(5) Which is sea animal?",
      "answer": [
        {"text": "Dog", "score": 0},
        {"text": "Cat", "score": 0},
        {"text": "Fish", "score": 10},
        {"text": "Mouse", "score": 0}
      ]
    },
    {
      "question": "(6) Which is a electronic device?",
      "answer": [
        {"text": "Cap", "score": 0},
        {"text": "Pen", "score": 0},
        {"text": "Desktop", "score": 10},
        {"text": "Cat", "score": 0}
      ]
    },
  ];

  void answerQues(int score) {
    setState(() {
      index++;
      totalScore += score;
    });
  }

  void restartQuiz() {
    setState(() {
      totalScore = 0;
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
            ),
            body: Container(
              child: index < quesList.length
                  ? Quiz(quesList, answerQues, index)
                  : Result(totalScore, restartQuiz),
            )));
  } // MaterialApp

}
