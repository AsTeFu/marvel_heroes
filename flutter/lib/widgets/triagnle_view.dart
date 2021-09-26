import 'package:flutter/material.dart';

class TriangleView extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TriangleView(
      {this.strokeColor = Colors.white,
      this.paintingStyle = PaintingStyle.fill,
      this.strokeWidth = 3});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x, y / 2.7)
      ..lineTo(x, y);
  }

  @override
  bool shouldRepaint(TriangleView oldDelegate) {
    return strokeColor != oldDelegate.strokeColor;
  }
}
