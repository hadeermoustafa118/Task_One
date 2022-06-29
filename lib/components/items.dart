import 'package:flutter/material.dart';
import 'package:task_one/models/boardingModel.dart';

class BuildItem extends StatelessWidget {
  BuildItem({Key? key, required this.model}) : super(key: key);
  BoardingModel? model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Image(
          image: AssetImage(model!.imgUrl),
        )),
        Text(
          model!.title,
          style: const TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          model!.body,
          style: const TextStyle(fontSize: 16.0, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
