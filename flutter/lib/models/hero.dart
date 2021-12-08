import 'package:flutter/material.dart';

class Hero {
  final String name;
  final String avatar;
  final Color color;
  final String thumbnail;
  final String description;

  Hero(
      {this.name = '',
      this.avatar = '',
      this.thumbnail = '',
      this.description = '',
      this.color = Colors.white});
}
