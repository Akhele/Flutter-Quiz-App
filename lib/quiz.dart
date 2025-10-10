import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/gradient_container.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/quiz_container.dart';


class Quiz extends StatefulWidget {
Quiz({super.key});
@override

State<Quiz> createState(){
  return _QuizState();
}

}

class _QuizState extends State<Quiz>
{
  var activeScreen = 'start_screen' ;

  void SwitchScreen(){
    setState(() {
      activeScreen = 'questions_screen';
    });
  }
@override
  Widget build(context) {
    return MaterialApp(

      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 253, 245, 2),const Color.fromARGB(255, 255, 0, 0)],
              begin: startAlighnment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: 
            activeScreen == 'start_screen' ? QuizContainer(SwitchScreen) : Questions(),
                  
          ) 
        )
      )
    );
    
  }
}