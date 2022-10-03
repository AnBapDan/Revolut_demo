// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:homework1cm/misc/appBar.dart';
import 'package:homework1cm/misc/themes.dart';
import 'package:homework1cm/pages/indexPage/tabViews/contas/contasView.dart';
import 'package:homework1cm/pages/notificationsPage/notifications.dart';
import 'package:homework1cm/pages/settingsPage/settings.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: TabBarView(
          children: [
            ContasView(),
            Icon(Icons.warning, color: Colors.white, size: 100),
            Icon(Icons.warning, color: Colors.white, size: 100),
            Icon(Icons.warning, color: Colors.white, size: 100),
            Icon(Icons.warning, color: Colors.white, size: 100),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width / 2,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 22, 22, 24),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 0, 128, 255),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingsPage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.settings_rounded,
                          size: 30,
                          color: Colors.grey,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationsPage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.notifications_rounded,
                          size: 30,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
