import 'package:flutter/material.dart';
import 'package:marvel_heroes/widgets/hero/hero_image.dart';
import 'package:marvel_heroes/widgets/hero/hero_name.dart';

import '../../models/hero.dart' as hero_model;

class HeroDetails extends StatelessWidget {
  final hero_model.Hero? hero;

  const HeroDetails({Key? key, this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      HeroImage(image: hero?.avatar),
      Positioned(
        top: 24,
        child: RawMaterialButton(
            shape: const CircleBorder(),
            onPressed: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      HeroName(
        name: hero?.name ?? '',
      ),
    ]);
  }
}
