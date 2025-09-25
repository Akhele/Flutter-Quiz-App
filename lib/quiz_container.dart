import 'package:flutter/material.dart';
import 'dart:math';

var rondomizer = Random();

class QuizContainer extends StatefulWidget {
  QuizContainer({super.key});
  
  @override 
  State<QuizContainer> createState(){
    return _QuizContainerState();
  }
}

class _QuizContainerState extends State<QuizContainer> {
  int currentDiceRoll = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/quiz-logo.png",
                  width: 200,
                  color: const Color.fromARGB(153, 255, 255, 255),),
                SizedBox(height: 20,),
                Text('Quiz', style: TextStyle(color: Colors.white, fontSize: 28),),
                OutlinedButton.icon(onPressed: (){}, 
                            style: OutlinedButton.styleFrom(foregroundColor: Colors.white,
                                    textStyle: TextStyle(fontSize: 28)
                            ),
                            icon: Icon(Icons.assistant_photo_outlined,),
                            label: Text('Start'))
            ],
            );
  }
}

