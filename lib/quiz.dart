import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/gradient_container.dart';


class Quiz extends StatefulWidget {
Quiz({super.key});
@override

State<Quiz> createState(){
  return _QuizState();
}

}

class _QuizState extends State<Quiz>
{
@override
  Widget build(context) {
    return MaterialApp(

      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 0, 0, 0), const Color.fromARGB(255, 233, 83, 83))
      )
    );
    
  }
}