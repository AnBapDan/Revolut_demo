// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homework1cm/misc/themes.dart';
import 'package:homework1cm/pages/indexPage/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revolut Demo',
      theme: themes(),
      home: IndexPage(title: "title"),
    );
  }
}
