import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/gradient_container.dart';

class Questions extends StatefulWidget {
  Questions({super.key});

@override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>
{
  @override
  Widget build(context) {
   return MaterialApp(

      home: Scaffold(
        body: GradientContainer()
      )
    );
  }
}