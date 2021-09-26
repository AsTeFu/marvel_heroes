import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  final logoAsset = 'assets/images/logo.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
      child: Image.asset(logoAsset, width: 200, fit: BoxFit.fitWidth),
    );
  }
}
