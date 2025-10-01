import 'package:flutter/material.dart';

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
                ElevatedButton(onPressed: (){}, child: Text('test1')),
                ElevatedButton(onPressed: (){}, child: Text('test1')),
                ElevatedButton(onPressed: (){}, child: Text('test1'), ),
                ElevatedButton(onPressed: (){}, child: Text('test1')),
              ],
            );
              
  }
}