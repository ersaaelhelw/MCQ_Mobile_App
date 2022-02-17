import 'package:flutter/material.dart';
import 'package:mcq_app/Screens/welcome_screen/wlcome_screen.dart';
import 'Screens/question_screen/question_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff00BFA6),
          appBarTheme: AppBarTheme(color:Color(0xff318173)),
          errorColor: Colors.red[700]),
      home:WelcomeScreen (),
    );
  }
}





