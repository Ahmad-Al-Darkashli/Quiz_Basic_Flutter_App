import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  final _questions = const [
    {
      "questionText": "What\'s your favorite color?",
      "ansewrs": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "White", "score": 1},
        {"text": "Green", "score": 3}
      ],
    },
    {
      "questionText": "What\'s your favorite animal?",
      "ansewrs": [
        {"text": "Rabbit", "score": 10},
        {"text": "Dog", "score": 5},
        {"text": "Elephant", "score": 1},
        {"text": "Monkey", "score": 3}
      ],
    },
    {
      "questionText": "What\'s your favorite sport?",
      "ansewrs": [
        {"text": "Football", "score": 10},
        {"text": "Basketball", "score": 5},
        {"text": "Martial Arts", "score": 1},
        {"text": "Swimming", "score": 3}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuez() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
          backgroundColor: Colors.accents[3],
          centerTitle: true,
          elevation: 0.0,
          //brightness: Brightness.light,
          // excludeHeaderSemantics: true,
          //iconTheme: ,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuez),
      ),
    );
  }
}
