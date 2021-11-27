import 'package:flutter/material.dart';

import 'package:marvel_heroes/widgets/logo.dart';
import 'package:marvel_heroes/widgets/choose_your_hero.dart';
import 'package:marvel_heroes/widgets/heroes_list.dart';

class Heroes extends StatelessWidget {
  const Heroes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2A272B),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Logo(),
          ChooseYourHero(),
          Flexible(fit: FlexFit.tight, child: HeroPageView())
        ],
      ),
    );
  }
}
