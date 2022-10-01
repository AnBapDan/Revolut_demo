// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:homework1cm/misc/scrollableTab.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Icon(size: 40, Icons.circle, color: Colors.yellow[800]),
            Text('DA'),
          ],
        ),
        actions: [
          IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: Icon(Icons.bar_chart_rounded)),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(Icons.star_rounded),
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(Icons.notifications),
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: Container(height: 35, child: ScrollableTab())),
      ),
    );
  }
}
