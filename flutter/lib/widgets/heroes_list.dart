import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:marvel_heroes/models/heroes_container.dart';
import 'package:marvel_heroes/widgets/hero_card.dart';
import 'package:marvel_heroes/widgets/triagnle_view.dart';
import 'package:marvel_heroes/models/hero.dart' as hero_model;

class HeroPageView extends StatefulWidget {
  const HeroPageView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HeroPageViewState();
}

class _HeroPageViewState extends State<HeroPageView> {
  final controller = PageController(viewportFraction: 0.85);

  double page = 0;
  int lastIndex = 0;

  final heroes = HeroesContainer().heroes;
  final _minScale = 0.93;

  @override
  void initState() {
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(onScroll);
  }

  void onScroll() {
    setState(() {
      page = controller.page ?? 0;
      lastIndex = controller.page?.floor() ?? 0;
    });
  }

  Widget _renderBackground(hero_model.Hero prev, hero_model.Hero curr) {
    var backgroundColor =
        Color.lerp(prev.color, curr.color, page - page.truncate());

    return Positioned.fill(
      child: CustomPaint(
        painter: TriangleView(strokeColor: backgroundColor ?? Colors.white),
      ),
    );
  }

  Widget _renderHero(BuildContext context, int index) {
    var value = (index.toDouble() - page).abs();
    var hero = heroes[index];

    return Transform.scale(
        scale: lerpDouble(1, _minScale, value) ?? 0,
        child: HeroCard(hero: hero));
  }

  @override
  Widget build(BuildContext context) {
    var prevHero = heroes[lastIndex];
    var currHero = heroes[page.abs().ceil() % heroes.length];

    return Stack(children: [
      _renderBackground(prevHero, currHero),
      Container(
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 48),
          child: PageView.builder(
              controller: controller,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              padEnds: true,
              itemCount: heroes.length,
              itemBuilder: _renderHero))
    ]);
  }
}
