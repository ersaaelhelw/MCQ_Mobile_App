
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget
{
  final score;
  ResultScreen({this.score});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor: Colors.white,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/end.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Congratulations, you have completed the Exam :)',
                    style: TextStyle(

                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff318173)

                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16,),
                  Text("Your Score ${score.toString()}",   style: TextStyle(
                      fontSize: 24,
                      color: Colors.black
                  ),)

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }




}