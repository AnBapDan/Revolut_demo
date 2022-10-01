// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  final String text;

  const Sections({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
