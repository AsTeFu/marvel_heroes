import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:marvel_heroes/pages/heroes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Heroes(),
    );
  }
}
