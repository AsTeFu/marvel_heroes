import 'package:flutter/material.dart';

class Hero {
  final String name;
  final String avatar;
  final Color color;
  final String thumbnail;

  Hero(
      {this.name = '',
      this.avatar = '',
      this.thumbnail = '',
      this.color = Colors.white});
}
