import 'package:flutter/material.dart' as material;

import './hero.dart' ;

class HeroesContainer {
  final List<Hero> heroes = [
    Hero(
        name: 'Dead pool',
        avatar: 'assets/images/deadpool_preview.jpg',
        color: const material.Color(0xFF39B4BC)),
    Hero(
        name: 'Iron Man',
        avatar: 'assets/images/ironman_preview.jpg',
        color: const material.Color(0xFF5C3A77)),
    Hero(
        name: 'Captain America',
        avatar: 'assets/images/captain_america_preview.jpg',
        color: const material.Color(0xFFEDC93F)),
    Hero(
        name: 'Doctor Strange',
        avatar: 'assets/images/doctor_strange_preview.jpg',
        color: const material.Color(0xFF65D6DA)),
    Hero(
        name: 'Thor',
        avatar: 'assets/images/thor_preview.jpg',
        color: const material.Color(0xFF3575A1)),
    Hero(
        name: 'Hulk',
        avatar: 'assets/images/hulk_preview.jpg',
        color: const material.Color(0xFF5C3D76)),
    Hero(
        name: 'Black Widow',
        avatar: 'assets/images/black_widow_preview.jpg',
        color: const material.Color(0xFF60CDD2)),
  ];
}
