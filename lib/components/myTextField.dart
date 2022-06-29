import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({Key? key, required this.validateText, required this.hintTxt , required this.txt}) : super(key: key);
final String txt;
final String validateText;
final String hintTxt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        txt,
          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return validateText;
            }
          },
          decoration: InputDecoration(
            hintText: hintTxt,
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.teal),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
      ],
    );
  }
}
