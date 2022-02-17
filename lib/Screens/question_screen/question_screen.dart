import 'package:flutter/material.dart';
import 'package:mcq_app/Screens/result_screen/result_screen.dart';
import 'package:mcq_app/provider/QuestionProvider.dart';
import 'package:provider/provider.dart';
import 'Widget/answerButton.dart';

class QuestionDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => QuestionsProvider(),
        builder: (context, snapshot) {
          final question = Provider.of<QuestionsProvider>(
            context,
          );

          return Scaffold(
              backgroundColor: Colors.white,
            body: question.questionIndex < question.examQuestions.length
                ? SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Answer The Following Questions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff318173)
                                ,fontWeight: FontWeight.w500
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/choose.png',height: 200,),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(question
                                .examQuestions[question.questionIndex]
                                .questionContent,
                              style: TextStyle(
                              fontSize: 24,
                                color: Colors.black
                            ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                itemCount: question.examQuestions.length,
                                itemBuilder: (context, index) {
                                  return AnswerButton(
                                      () => question.answerQuestion(question
                                          .examQuestions[question.questionIndex]
                                          .answer[index]),
                                      question.examQuestions[question.questionIndex]
                                          .answer[index]);
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                  ),
                )
                :ResultScreen(score: question.finalScore,)
          );
        });
  }
}
