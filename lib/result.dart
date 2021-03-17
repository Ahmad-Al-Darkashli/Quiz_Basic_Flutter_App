import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultTypes {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You\'re awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You\'re ... strange?!";
    } else {
      resultText = "You\'re so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultTypes,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart Quez!", style: TextStyle(fontSize: 18)),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
