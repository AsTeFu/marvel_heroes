import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:marvel_heroes/localstore/heroes_database.dart';

class HeroesProvider extends StatelessWidget {
  final Widget? child;

  const HeroesProvider({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(create: (_) => HeroesDatabase(), child: child);
  }
}
