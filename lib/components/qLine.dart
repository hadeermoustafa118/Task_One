import 'package:flutter/material.dart';
class QLine extends StatelessWidget {
   QLine({Key? key, required this.txt , required this.btnTxt , required this.fun}) : super(key: key);
final String txt;
final String btnTxt;
final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(txt),
        TextButton(
            onPressed: () {
              fun();
            },
            child:  Text(
              btnTxt,
              style: TextStyle(color: Colors.teal),
            ))
      ],
    );
  }
}
