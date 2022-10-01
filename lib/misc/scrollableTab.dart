// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScrollableTab extends StatelessWidget {
  const ScrollableTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(color: Colors.white);
    return TabBar(
      indicatorWeight: 1,
      indicator: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      isScrollable: true,
      tabs: [
        Tab(text: "Contas"),
        Tab(text: "Cartões"),
        Tab(text: "Ações"),
        Tab(text: "Criptomoedas"),
        Tab(text: "Cofres"),
      ],
    );
  }
}
