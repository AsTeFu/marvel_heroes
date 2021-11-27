import 'package:flutter/material.dart';

import '../../models/hero.dart' as hero_model;

class HeroDescription extends StatelessWidget {
  final String description;

  const HeroDescription({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameStyle = const TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      shadows: [
        Shadow(
            offset: Offset(1.2, 2.3),
            blurRadius: 4.0,
            color: Color.fromARGB(125, 0, 0, 255))
      ],
    );

    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        description,
        style: nameStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
