
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class HeroImage extends StatelessWidget {
  final String source;

  const HeroImage({Key? key, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: CachedNetworkImage(
        imageUrl: source,
      ),
    );
  }
}
