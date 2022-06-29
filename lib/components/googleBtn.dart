import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: double.infinity,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'http://pngimg.com/uploads/google/google_PNG19635.png',
                width: 20,
                height: 50,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text('Sign with by google')
            ],
          ),
        ),
      ),
    );
  }
}
