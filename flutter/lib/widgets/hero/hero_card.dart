import 'package:flutter/material.dart';
import 'package:marvel_heroes/widgets/hero/hero_image.dart';
import 'package:marvel_heroes/widgets/hero/hero_name.dart';

import '../../models/hero.dart' as hero_model;

class HeroCard extends StatelessWidget {
  final hero_model.Hero? hero;

  const HeroCard({Key? key, this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.expand,
            children: [
              HeroImage(image: hero?.avatar),
              HeroName(name: hero?.name ?? '')
            ]));
  }
}
