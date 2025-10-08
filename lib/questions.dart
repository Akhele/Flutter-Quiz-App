import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';

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
   return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Question Text..."),
                SizedBox(height: 30,),
                AnswerButton('1', (){}),
                AnswerButton('2', (){}),
                AnswerButton('3', (){}),
                AnswerButton('4', (){})

              ],
            );
              
  }
}