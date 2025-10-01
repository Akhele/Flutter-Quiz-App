import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz_container.dart';

var startAlighnment = Alignment.topRight,
    endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

@override
  Widget build(context) {
          return MaterialApp(

      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 204, 242, 15),const Color.fromARGB(255, 255, 0, 0)],
              begin: startAlighnment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: 
            Column(),
                  
          ) 
        )
      )
    );
    
  }

}