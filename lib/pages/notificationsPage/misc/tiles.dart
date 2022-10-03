// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  String? avatar;
  String title;
  String subtitle;
  Color? color;

  MessageTile(
      {Key? key,
      this.avatar,
      required this.color,
      this.subtitle = '',
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      tileColor: Color.fromARGB(255, 22, 22, 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      leading: CircleAvatar(
        radius: 18,
        foregroundColor: color,
        backgroundImage: Image.asset(
          avatar!,
          fit: BoxFit.scaleDown,
        ).image,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}
