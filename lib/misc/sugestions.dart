import 'package:flutter/material.dart';
import 'package:homework1cm/misc/themes.dart';

class SugestionsWidget extends StatelessWidget {
  final Color color;
  final String asset;
  final String message;

  const SugestionsWidget({
    Key? key,
    required this.color,
    required this.asset,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: double.maxFinite,
          decoration: containers(color),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                asset,
                fit: BoxFit.scaleDown,
                height: 50,
                width: 40,
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
