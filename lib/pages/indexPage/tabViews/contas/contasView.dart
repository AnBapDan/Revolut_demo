// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:homework1cm/misc/sections.dart';
import 'package:homework1cm/misc/themes.dart';
import 'package:homework1cm/pages/indexPage/tabViews/contas/walletContainer.dart';

class ContasView extends StatelessWidget {
  const ContasView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.fromLTRB(20, 0, 10, 10);

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WalletContainer(padding: padding),
          Sections(text: 'Sugestões para si'),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: containers(Color.fromARGB(255, 22, 22, 24)),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: double.maxFinite,
                        decoration:
                            containers(Color.fromARGB(255, 168, 70, 92)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/eur_coin.gif',
                              fit: BoxFit.scaleDown,
                              height: 40,
                              width: 40,
                            ),
                            FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                'Ganhe 30€ por convite',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Sections(text: 'Cashback'),
          Sections(text: 'Análise'),
          Sections(text: 'Pagamentos Agendados'),
          Sections(text: 'Valor Líquido'),
        ],
      ), //Layout
    );
  }
}
