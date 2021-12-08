import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      child: RawMaterialButton(
          shape: const CircleBorder(),
          onPressed: () => Navigator.pop(context),
          hoverColor: Colors.grey.shade700,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
  }
}
