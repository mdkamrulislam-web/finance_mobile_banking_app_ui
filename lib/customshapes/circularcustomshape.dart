import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4754065, size.height * 0.5207806);
    path_0.lineTo(size.width * 0.5644571, size.height * 0.4758341);
    path_0.cubicTo(
        size.width * 0.5622396,
        size.height * 0.4552733,
        size.width * 0.5495901,
        size.height * 0.3999810,
        size.width * 0.4773720,
        size.height * 0.4389528);
    path_0.cubicTo(
        size.width * 0.3925548,
        size.height * 0.4847189,
        size.width * 0.4538033,
        size.height * 0.5038782,
        size.width * 0.4754065,
        size.height * 0.5207806);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff656766).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4831844, size.height * 0.5259357);
    path_1.cubicTo(
        size.width * 0.5044181,
        size.height * 0.5381582,
        size.width * 0.5760986,
        size.height * 0.5733528,
        size.width * 0.5651458,
        size.height * 0.4845764);
    path_1.lineTo(size.width * 0.4831844, size.height * 0.5259357);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffC1C1C1).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0125;
    paint_2_stroke.color = Color(0xffdadada).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000168, size.height * 0.4842675),
        size.width * 0.3872967, paint_2_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
