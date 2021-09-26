import 'package:flutter/material.dart';

class ChooseYourHero extends StatelessWidget {
  const ChooseYourHero({Key? key}) : super(key: key);

  final title = 'Choose your hero';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
