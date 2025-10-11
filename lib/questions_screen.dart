import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

@override
  State<Questions> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<Questions>
{
  int currentQuestionIndex = 0;

  void answerQuestion()
  {
    setState(() {
      if(currentQuestionIndex<questions.length-1)
      {
            currentQuestionIndex++;
      }
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];
   return Container(
    margin: EdgeInsets.all(40),
     child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                
                children: [
                  Text(
                    currentQuestion.text,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  ...currentQuestion.getShuffledAnswers().map((answer){
                    return AnswerButton(answer, answerQuestion);
                  })
     
                ],
              ),
   );
              
  }
}