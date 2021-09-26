import 'package:flutter/material.dart';

import '../models/hero.dart' as hero_model;

class HeroCard extends StatelessWidget {
  final hero_model.Hero? hero;

  const HeroCard({Key? key, this.hero}) : super(key: key);

  Widget _renderAvatar() => FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(hero?.avatar ?? ''),
      );

  Widget _renderName() {
    var heroName = hero?.name ?? 'Deadpool';

    var nameStyle = const TextStyle(
      fontSize: 32,
      color: Colors.white,
      fontWeight: FontWeight.bold,
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
        child: Text(heroName, style: nameStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.expand,
            children: [_renderAvatar(), _renderName()]));
  }
}
