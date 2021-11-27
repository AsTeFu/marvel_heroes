import 'package:flutter/material.dart';

import '../../models/hero.dart' as hero_model;

class HeroName extends StatelessWidget {
  final String name;

  const HeroName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameStyle = const TextStyle(
      fontSize: 32,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      shadows: [
        Shadow(
            offset: Offset(2, 3),
            blurRadius: 5.0,
            color: Color.fromARGB(125, 0, 0, 255))
      ],
    );

    return Container(
      margin: const EdgeInsets.all(30),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.bottomLeft,
        child: Text(name, style: nameStyle),
      ),
    );
  }
}
