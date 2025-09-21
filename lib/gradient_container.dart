import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz_container.dart';

var startAlighnment = Alignment.topRight,
    endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1,this.color2, {super.key});
  final Color color1, color2;

@override
  Widget build(context) {
          return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1,color2],
              begin: startAlighnment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: 
            QuizContainer(),
                  
          ) 
        );
  }

}