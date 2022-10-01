// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:homework1cm/misc/themes.dart';

class WalletContainer extends StatelessWidget {
  const WalletContainer({
    Key? key,
    required this.padding,
  }) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containers(Color.fromARGB(255, 22, 22, 24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Euro',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 18,
                  foregroundImage: Image.asset(
                    'assets/eu_flag.png',
                  ).image,
                ),
              ),
            ],
          ),
          Padding(
            padding: padding,
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          color: Colors.blue[600],
                        ),
                        Text(
                          'Adicionar dinheiro',
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.more_horiz,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ), //espaçamento entre botoes e operaçoes
          Padding(
            padding: padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Operações',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Ver tudo'),
                ),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text(
                  'Microsoft',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                leading: CircleAvatar(
                    foregroundImage: Image.asset(
                  'assets/ms_logo.png',
                  fit: BoxFit.fill,
                  height: 10,
                  width: 10,
                ).image),
                subtitle: Text('Segunda, 5/09, 22:37 - Validação do Cartão',
                    style: Theme.of(context).textTheme.subtitle2),
              )
            ],
          ),
        ],
      ),
    );
  }
}
