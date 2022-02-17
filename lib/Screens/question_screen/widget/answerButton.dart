import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectAnswer;
  final String answer;
  AnswerButton(this.selectAnswer, this.answer);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 8),
      child: ElevatedButton(
        onPressed: selectAnswer,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(2),

            backgroundColor: MaterialStateProperty.all(Color(0xff00BFA6))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            answer,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
