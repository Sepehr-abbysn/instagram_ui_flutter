import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1898734, 0);
    path_0.lineTo(size.width * 0.06962025, 0);
    path_0.cubicTo(size.width * 0.03117006, 0, 0, size.height * 0.03117006, 0,
        size.height * 0.06962025);
    path_0.lineTo(0, size.height * 0.1835443);
    path_0.lineTo(size.width * 0.02531646, size.height * 0.1835443);
    path_0.lineTo(size.width * 0.02531646, size.height * 0.06962025);
    path_0.cubicTo(
        size.width * 0.02531646,
        size.height * 0.04515196,
        size.width * 0.04515196,
        size.height * 0.02531646,
        size.width * 0.06962025,
        size.height * 0.02531646);
    path_0.lineTo(size.width * 0.1898734, size.height * 0.02531646);
    path_0.lineTo(size.width * 0.1898734, 0);
    path_0.close();
    path_0.moveTo(size.width * 0.1898734, size.height * 0.9746835);
    path_0.lineTo(size.width * 0.06962025, size.height * 0.9746835);
    path_0.cubicTo(
        size.width * 0.04515196,
        size.height * 0.9746835,
        size.width * 0.02531646,
        size.height * 0.9548481,
        size.width * 0.02531646,
        size.height * 0.9303797);
    path_0.lineTo(size.width * 0.02531646, size.height * 0.8164557);
    path_0.lineTo(0, size.height * 0.8164557);
    path_0.lineTo(0, size.height * 0.9303797);
    path_0.cubicTo(0, size.height * 0.9688291, size.width * 0.03117006,
        size.height, size.width * 0.06962025, size.height);
    path_0.lineTo(size.width * 0.1898734, size.height);
    path_0.lineTo(size.width * 0.1898734, size.height * 0.9746835);
    path_0.close();
    path_0.moveTo(size.width * 0.8227848, size.height);
    path_0.lineTo(size.width * 0.8227848, size.height * 0.9746835);
    path_0.lineTo(size.width * 0.9303797, size.height * 0.9746835);
    path_0.cubicTo(
        size.width * 0.9548481,
        size.height * 0.9746835,
        size.width * 0.9746835,
        size.height * 0.9548481,
        size.width * 0.9746835,
        size.height * 0.9303797);
    path_0.lineTo(size.width * 0.9746835, size.height * 0.8164557);
    path_0.lineTo(size.width, size.height * 0.8164557);
    path_0.lineTo(size.width, size.height * 0.9303797);
    path_0.cubicTo(size.width, size.height * 0.9688291, size.width * 0.9688291,
        size.height, size.width * 0.9303797, size.height);
    path_0.lineTo(size.width * 0.8227848, size.height);
    path_0.close();
    path_0.moveTo(size.width * 0.8227848, size.height * 0.02531646);
    path_0.lineTo(size.width * 0.8227848, 0);
    path_0.lineTo(size.width * 0.9303797, 0);
    path_0.cubicTo(size.width * 0.9688291, 0, size.width,
        size.height * 0.03117006, size.width, size.height * 0.06962025);
    path_0.lineTo(size.width, size.height * 0.1835443);
    path_0.lineTo(size.width * 0.9746835, size.height * 0.1835443);
    path_0.lineTo(size.width * 0.9746835, size.height * 0.06962025);
    path_0.cubicTo(
        size.width * 0.9746835,
        size.height * 0.04515196,
        size.width * 0.9548481,
        size.height * 0.02531646,
        size.width * 0.9303797,
        size.height * 0.02531646);
    path_0.lineTo(size.width * 0.8227848, size.height * 0.02531646);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff181717).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}