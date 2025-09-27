import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/gradient_container.dart';
import 'package:flutter_quiz_app/questions.dart';
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
  Widget? activeScreen ;
  @override
  void initState() {
    activeScreen = QuizContainer(SwitchScreen);
    super.initState();
  }
  void SwitchScreen(){
    setState(() {
      activeScreen = Questions();
    });
  }
@override
  Widget build(context) {
    return MaterialApp(

      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black,const Color.fromARGB(255, 255, 0, 0)],
              begin: startAlighnment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: 
            activeScreen,
                  
          ) 
        )
      )
    );
    
  }
}