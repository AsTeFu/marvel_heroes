import 'package:flutter/material.dart' as material;

import './hero.dart';

class HeroesContainer {
  final List<Hero> heroes = [
    Hero(
      name: 'Deadpool',
      avatar: 'assets/images/deadpool_preview.jpg',
      color: const material.Color(0xFF39B4BC),
      thumbnail:
          'https://i.annihil.us/u/prod/marvel/i/mg/9/90/5261a86cacb99/portrait_incredible.jpg',
    ),
    Hero(
        name: 'Iron Man',
        avatar: 'assets/images/ironman_preview.jpg',
        color: const material.Color(0xFF5C3A77),
        description:
            'Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark.',
        thumbnail:
            'https://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55/portrait_incredible.jpg'),
    Hero(
        name: 'Captain America',
        avatar: 'assets/images/captain_america_preview.jpg',
        color: const material.Color(0xFFEDC93F),
        description: 'Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become America\'s one-man army.',
        thumbnail:
            'https://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087/portrait_incredible.jpg'),
    Hero(
        name: 'Doctor Strange',
        avatar: 'assets/images/doctor_strange_preview.jpg',
        color: const material.Color(0xFF65D6DA),
        thumbnail:
            'https://i.annihil.us/u/prod/marvel/i/mg/5/f0/5261a85a501fe/portrait_incredible.jpg'),
    Hero(
        name: 'Thor',
        avatar: 'assets/images/thor_preview.jpg/portrait_incredible.jpg',
        color: const material.Color(0xFF3575A1),
        description: 'As the Norse God of thunder and lightning, Thor wields one of the greatest weapons ever made, the enchanted hammer Mjolnir.',
        thumbnail:
            'https://i.annihil.us/u/prod/marvel/i/mg/d/d0/5269657a74350/portrait_incredible.jpg'),
    Hero(
        name: 'Hulk',
        avatar: 'assets/images/hulk_preview.jpg',
        color: const material.Color(0xFF5C3D76),
        description: 'Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk.',
        thumbnail:
            'https://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0/portrait_incredible.jpg'),
    Hero(
        name: 'Black Widow',
        avatar: 'assets/images/black_widow_preview.jpg',
        color: const material.Color(0xFF60CDD2),
        thumbnail:
            'https://i.annihil.us/u/prod/marvel/i/mg/f/30/50fecad1f395b/portrait_incredible.jpg'),
  ];
}
