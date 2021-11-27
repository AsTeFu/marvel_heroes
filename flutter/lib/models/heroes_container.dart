import 'package:flutter/material.dart' as material;

import './hero.dart';

class HeroesContainer {
  final List<Hero> heroes = [
    Hero(
      name: 'Dead pool',
      avatar: 'assets/images/deadpool_preview.jpg',
      color: const material.Color(0xFF39B4BC),
      thumbnail:
          'http://i.annihil.us/u/prod/marvel/i/mg/9/90/5261a86cacb99/portrait_incredible.jpg',
    ),
    Hero(
        name: 'Iron Man',
        avatar: 'assets/images/ironman_preview.jpg',
        color: const material.Color(0xFF5C3A77),
        thumbnail:
            'http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55/portrait_incredible.jpg'),
    Hero(
        name: 'Captain America',
        avatar: 'assets/images/captain_america_preview.jpg',
        color: const material.Color(0xFFEDC93F),
        thumbnail:
            'http://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087/portrait_incredible.jpg'),
    Hero(
        name: 'Doctor Strange',
        avatar: 'assets/images/doctor_strange_preview.jpg',
        color: const material.Color(0xFF65D6DA),
        thumbnail:
            'http://i.annihil.us/u/prod/marvel/i/mg/5/f0/5261a85a501fe/portrait_incredible.jpg'),
    Hero(
        name: 'Thor',
        avatar: 'assets/images/thor_preview.jpg/portrait_incredible.jpg',
        color: const material.Color(0xFF3575A1),
        thumbnail:
            'http://i.annihil.us/u/prod/marvel/i/mg/d/d0/5269657a74350/portrait_incredible.jpg'),
    Hero(
        name: 'Hulk',
        avatar: 'assets/images/hulk_preview.jpg',
        color: const material.Color(0xFF5C3D76),
        thumbnail:
            'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0/portrait_incredible.jpg'),
    Hero(
        name: 'Black Widow',
        avatar: 'assets/images/black_widow_preview.jpg',
        color: const material.Color(0xFF60CDD2),
        thumbnail:
            'http://i.annihil.us/u/prod/marvel/i/mg/f/30/50fecad1f395b/portrait_incredible.jpg'),
  ];
}
