import 'package:flutter/material.dart';

class InnerCircleObject extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9732714, size.height * 0.3829180);
    path_0.cubicTo(
        size.width * 0.9555212,
        size.height * 0.2993250,
        size.width * 0.9283798,
        size.height * 0.2054344,
        size.width * 0.8890609,
        size.height * 0.09994808);
    path_0.cubicTo(
        size.width * 0.8602683,
        size.height * 0.02293181,
        size.width * 0.7602683,
        size.height * -0.01860505,
        size.width * 0.6701754,
        size.height * 0.009778470);
    path_0.cubicTo(
        size.width * 0.5505676,
        size.height * 0.04759432,
        size.width * 0.3582043,
        size.height * 0.1499654,
        size.width * 0.05283798,
        size.height * 0.3952925);
    path_0.cubicTo(
        size.width * -0.01031992,
        size.height * 0.4460021,
        size.width * -0.01651187,
        size.height * 0.5289027,
        size.width * 0.03849329,
        size.height * 0.5859294);
    path_0.cubicTo(
        size.width * 0.08937049,
        size.height * 0.6386293,
        size.width * 0.1595459,
        size.height * 0.7050017,
        size.width * 0.2445820,
        size.height * 0.7692973);
    path_0.lineTo(size.width * 0.9732714, size.height * 0.3829180);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff656766).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4023736, size.height * 0.8737452);
    path_1.cubicTo(
        size.width * 0.5082559,
        size.height * 0.9338872,
        size.width * 0.6277606,
        size.height * 0.9818276,
        size.width * 0.7555212,
        size.height * 0.9991346);
    path_1.cubicTo(
        size.width * 0.8263158,
        size.height * 1.008654,
        size.width * 0.8965944,
        size.height * 0.9782797,
        size.width * 0.9293086,
        size.height * 0.9248010);
    path_1.cubicTo(
        size.width * 0.9704850,
        size.height * 0.8574766,
        size.width * 1.011455,
        size.height * 0.7422118,
        size.width * 0.9985552,
        size.height * 0.5576324);
    path_1.lineTo(size.width * 0.4023736, size.height * 0.8737452);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffC1C1C1).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
