import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.textTitle,
      required this.press,
      this.btnColor = Colors.teal,
      this.txtColor = Colors.white,
      this.height = 50,
      this.width = double.infinity,
      this.raduis = 15.0})
      : super(key: key);
  final String textTitle;
  final Color txtColor;
  final VoidCallback press;
  final double height;
  final double width;
  final double raduis;
  final Color btnColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(raduis),
        ),
        child: MaterialButton(
          height: height,
          minWidth: width,
          color: btnColor,
          onPressed: () {
            press();
          },
          child: Text(
            textTitle,
            style: TextStyle(color: txtColor),
          ),
        ));
  }
}
