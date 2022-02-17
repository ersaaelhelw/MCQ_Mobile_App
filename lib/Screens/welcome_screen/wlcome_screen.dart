import 'package:flutter/material.dart';

import '../question_screen/question_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/home.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: 'Enter your name'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(

                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(2),

                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff00BFA6))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionDataScreen()),
                      );
                    },
                    child: Text('Click to start',
                      style: TextStyle(

                          fontSize: 24,
                          color: Colors.white

                      ),
                      textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
