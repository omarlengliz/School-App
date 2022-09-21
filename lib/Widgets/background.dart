import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path0 = Path();

    path0.moveTo(0, 0);
    path0.quadraticBezierTo(size.width, 0, size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.9979167, size.height * 0.9271429,
        size.width * 0.9566667, size.height * 0.9271429);
    path0.cubicTo(
        size.width * 0.7375000,
        size.height * 0.9314286,
        size.width * 0.2604167,
        size.height * 0.9278571,
        size.width * 0.0416667,
        size.height * 0.9285714);
    path0.quadraticBezierTo(size.width * 0.0025000, size.height * 0.9282143, 0,
        size.height * 0.8585714);
    path0.quadraticBezierTo(0, size.height * 0.3760714, 0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
