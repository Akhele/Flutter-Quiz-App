import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

@override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>
{
  @override
  Widget build(context) {
    var currentQuestion = questions[0];
   return Container(
    margin: EdgeInsets.all(40),
     child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                
                children: [
                  Text(currentQuestion.text,style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  ...currentQuestion.getShuffledAnswers().map((answer){
                    return AnswerButton(answer, (){});
                  })
     
                ],
              ),
   );
              
  }
}