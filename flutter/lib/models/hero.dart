import 'package:flutter/material.dart';

class Hero {
  final int id;
  final String name;
  final Color color;
  final String thumbnail;
  final String description;

  Hero(
      {this.id = 0,
      this.name = '',
      this.thumbnail = '',
      this.description = '',
      this.color = Colors.white});
}
