import 'package:flutter/material.dart';

import '../../models/hero.dart' as hero_model;

class HeroImage extends StatelessWidget {
  final String? image;

  const HeroImage({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: Image.network(image ?? ''),
    );
  }
}
