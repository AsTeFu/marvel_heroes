import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:marvel_heroes/pages/heroes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Directionality(
      textDirection: TextDirection.ltr,
      child: Heroes(),
    ));
  }
}
