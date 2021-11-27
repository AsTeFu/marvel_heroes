import 'package:flutter/material.dart';

class NoDataPlaceholder extends StatelessWidget {
  const NoDataPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 3),
                    blurRadius: 5.0,
                    color: Color.fromARGB(125, 0, 0, 255))
              ]),
          child: const Icon(Icons.accessible, size: 60),
        ),
        const SizedBox(height: 24),
        const Text(
          'Heroes can\'t be uploaded!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            shadows: [
              Shadow(
                  offset: Offset(2, 3),
                  blurRadius: 5.0,
                  color: Color.fromARGB(125, 0, 0, 255))
            ],
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
