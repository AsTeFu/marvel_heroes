import 'package:flutter/material.dart';

import '../models/hero.dart' as hero_model;

import 'package:marvel_heroes/widgets/hero/hero_description.dart';
import 'package:marvel_heroes/widgets/hero/hero_image.dart';
import 'package:marvel_heroes/widgets/hero/hero_name.dart';
import '../widgets/utils/back_button.dart' as utils;

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
        HeroImage(
          source: hero?.thumbnail ?? '',
        ),
        const utils.BackButton(),
        Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HeroName(name: hero?.name ?? ''),
              const SizedBox(height: 16),
              HeroDescription(description: hero?.description ?? '')
            ],
          ),
        )
      ]),
    );
  }
}
