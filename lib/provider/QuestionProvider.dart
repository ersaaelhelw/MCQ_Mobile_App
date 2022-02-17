import 'package:flutter/cupertino.dart';
import 'package:mcq_app/models/question.dart';

class QuestionsProvider extends ChangeNotifier {


  var examQuestions=[
    Question(questionContent: 'Sally is 54 years old and her mother is 80, how many years ago was Sally’s mother times her age?',answer:["41 years ago",'65 years ago','55 years ago','44 years ago','32 years ago'], correctAnswer: '41 years ago'),
    Question(questionContent: 'What is the average of first 150 natural numbers?',answer:['70','70.5','75','75.5','80'], correctAnswer: '75.5'),
    Question(questionContent: ' 6 × 6 ?',answer:['35','30','59','36','20'],correctAnswer: '36' ),
    Question(questionContent: 'What is the name of the most common religion in India?',answer:["Hinduism",'Judaism','Christianity','Islam','Bahaa'], correctAnswer: 'Hinduism'),
    Question(questionContent: 'How many hearts for an octopus?',answer:['5','3','2','1','4'],correctAnswer: '3' ),
  ];

  int finalScore = 0;
  var questionIndex = 0;

  QuestionsProvider() {
    _shuffleData(examQuestions);
    _shuffleAnswers();
  }

  void answerQuestion(String x) {
    if (questionIndex < examQuestions.length) {
      if (x == examQuestions[questionIndex].correctAnswer) finalScore += 2;
    }
    questionIndex += 1;
    notifyListeners();
  }

  void _shuffleAnswers() {
    if (questionIndex < examQuestions.length)
      _shuffleData(examQuestions[questionIndex].answer);
    notifyListeners();
  }

  void _shuffleData(List item) {
    item..shuffle();
    notifyListeners();
  }


}



