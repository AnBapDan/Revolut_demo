// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:homework1cm/misc/appBar.dart';
import 'package:homework1cm/pages/indexPage/tabViews/contas/contasView.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: CustomAppBar(),
        body: TabBarView(
          children: [
            ContasView(),
            Icon(Icons.directions_car),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
          ],
        ),
        bottomNavigationBar: FloatingNavbar(items: [
          FloatingNavbarItem(icon: Icons.home),
          FloatingNavbarItem(icon: Icons.compare_arrows),
          FloatingNavbarItem(icon: Icons.settings),
        ], currentIndex: 0, onTap: (int index) {}),
      ),
    );
  }
}
