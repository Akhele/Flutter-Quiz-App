import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.buttoonText,this.onTap,{super.key});
final String buttoonText;
final void Function() onTap;

  @override


  Widget build(BuildContext context) {
    return Column(
              children: [
                ElevatedButton(
                            onPressed: onTap,
                            style:ElevatedButton.styleFrom(
                                    minimumSize: Size(300, 30),
                                    backgroundColor: const Color.fromARGB(255, 64, 171, 247),
                                    foregroundColor: Colors.black,
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30)
                                      ),
                            child: Text(buttoonText)),

                            SizedBox(height: 10,)
              ],
    );
    
  }
}
