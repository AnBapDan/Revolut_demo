// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
            child: Text(
          'This is supposed to be the settings page',
          style: Theme.of(context).textTheme.headline1,
        )),
      ),
    );
  }
}
