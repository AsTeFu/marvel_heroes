import 'package:flutter/material.dart';
import 'package:marvel_heroes/widgets/hero/hero_image.dart';
import 'package:marvel_heroes/widgets/hero/hero_name.dart';

import '../../models/hero.dart' as hero_model;
import '../utils/back_button.dart' as utils;

class HeroDetails extends StatelessWidget {
  final hero_model.Hero? hero;
  final int index;

  const HeroDetails({Key? key, this.hero, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero-$index',
      child: Stack(fit: StackFit.expand, children: [
        HeroImage(image: hero?.thumbnail),
        const utils.BackButton(),
        HeroName(
          name: hero?.name ?? '',
        ),
      ]),
    );
  }
}
