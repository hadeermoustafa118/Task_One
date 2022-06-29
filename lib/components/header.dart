import 'package:flutter/material.dart';

class Header extends StatelessWidget {
   Header({Key? key, required this.title, }) : super(key: key);

final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
         'Welcome to delivery app',
          style: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
             title,
              style:
                  const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.help_outlined,
                  color: Colors.blue,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
