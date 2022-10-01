// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
    splashColor: Colors.transparent,
    backgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
            color: Color.fromARGB(255, 0, 128, 255),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.centerLeft,
        primary: Color.fromARGB(255, 23, 35, 49), //fundo
        onPrimary: Color.fromARGB(255, 11, 132, 253), //texto
        shadowColor: Colors.transparent,
        textStyle: TextStyle(
            color: Color.fromARGB(255, 0, 128, 255),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),
        padding: EdgeInsets.all(5),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400),
      bodyText1: TextStyle(color: Colors.white),
    ),
    indicatorColor: Colors.transparent,
  );
}

BoxDecoration containers(Color color) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    color: color,
    borderRadius: BorderRadius.circular(10),
  );
}
