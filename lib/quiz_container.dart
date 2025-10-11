import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

var rondomizer = Random();
class QuizContainer extends StatelessWidget {
  QuizContainer(this.startQuiz ,{super.key});
final void Function() startQuiz;


  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/quiz-logo.png",
                  width: 200,
                  color: const Color.fromARGB(153, 255, 255, 255),),
                SizedBox(height: 20,),
                Text('Quiz', style: GoogleFonts.lato(color: Colors.white, fontSize: 28),),
                OutlinedButton.icon(onPressed: startQuiz, 
                            style: OutlinedButton.styleFrom(foregroundColor: Colors.white,
                                    textStyle: TextStyle(fontSize: 28)
                            ),
                            icon: Icon(Icons.assistant_photo_outlined,),
                            label: Text('Start'))
            ],
            );
  }
}

