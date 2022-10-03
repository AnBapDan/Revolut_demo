// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homework1cm/misc/messages.dart';
import 'package:homework1cm/misc/sections.dart';
import 'package:homework1cm/pages/notificationsPage/misc/tiles.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Caixa de Entrada',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Sections(text: '3 de outubro'),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: MessageTile(
                              title: messages[index]['title'].toString(),
                              subtitle:
                                  messages[index]['subtitle']?.toString() ?? '',
                              avatar: messages[index]['avatar']?.toString() ??
                                  'assets/default.png',
                              color: messages[index]['color'] as Color?)
                          .build(context),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
