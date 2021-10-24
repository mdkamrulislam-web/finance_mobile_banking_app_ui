import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainterCard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.00009465663, size.height * 0.8797074);
    path_0.lineTo(size.width * 0.4102892, size.height * 0.001359239);
    path_0.lineTo(size.width * 0.06273368, size.height * 0.001359239);
    path_0.cubicTo(size.width * 0.02808936, size.height * 0.001359239, 0,
        size.height * 0.04841289, 0, size.height * 0.1064204);
    path_0.lineTo(0, size.height * 0.8797074);
    path_0.lineTo(size.width * 0.00009465663, size.height * 0.8797074);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * -11.82018, size.height * 0.7121588),
        Offset(size.width * 0.3073328, size.height * -14.45774), [
      const Color(0xffF49B4F).withOpacity(1.0),
      const Color(0xffF49C52).withOpacity(1.0),
      const Color(0xffE5863A).withOpacity(0.98),
      const Color(0xffEB9448).withOpacity(0.98),
      const Color(0xffD47128).withOpacity(1.0)
    ], [
      0.1447,
      0.3382,
      0.5151,
      0.7121,
      0.8754
    ]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.01746415, size.height * 0.9658591);
    path_1.cubicTo(
        size.width * 0.01798476,
        size.height * 0.9667786,
        size.width * 0.01852904,
        size.height * 0.9676981,
        size.width * 0.01907331,
        size.height * 0.9686176);
    path_1.cubicTo(
        size.width * 0.01850537,
        size.height * 0.9676981,
        size.width * 0.01798476,
        size.height * 0.9667386,
        size.width * 0.01746415,
        size.height * 0.9657792);
    path_1.lineTo(size.width * 0.01746415, size.height * 0.9658591);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.01825879, size.height * 0.9672132),
        Offset(size.width * 0.01829381, size.height * 0.9671540), [
      const Color(0xffF49B4F).withOpacity(1.0),
      const Color(0xffF49C52).withOpacity(1.0),
      const Color(0xffEB9448).withOpacity(0.98),
      const Color(0xffE5863A).withOpacity(0.98),
      const Color(0xffD47128).withOpacity(1.0)
    ], [
      0.1447,
      0.3382,
      0.5151,
      0.7121,
      0.8754
    ]);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9372427, size.height * 0.0007595746);
    path_2.lineTo(size.width * 0.9081121, size.height * 0.0007595746);
    path_2.lineTo(size.width * 0.4452648, size.height);
    path_2.lineTo(size.width * 0.9372427, size.height);
    path_2.cubicTo(
        size.width * 0.9716977,
        size.height,
        size.width * 0.9996214,
        size.height * 0.9528664,
        size.width * 0.9996214,
        size.height * 0.8946990);
    path_2.lineTo(size.width * 0.9996214, size.height * 0.1060606);
    path_2.cubicTo(
        size.width * 0.9996214,
        size.height * 0.04793316,
        size.width * 0.9716977,
        size.height * 0.0007595746,
        size.width * 0.9372427,
        size.height * 0.0007595746);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5883333, size.height * 1.202829),
        Offset(size.width * 1.092246, size.height * 0.1882926), [
      const Color(0xffE37C26).withOpacity(1.0),
      const Color(0xffDB7727).withOpacity(1.0),
      const Color(0xffD47128).withOpacity(1.0)
    ], [
      0.2332,
      0.507,
      0.803
    ]);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4463297, size.height * 1.000280);
    path_3.lineTo(size.width * 0.9102892, size.height * 0.001359239);
    path_3.lineTo(size.width * 0.4087510, size.height * 0.001639082);
    path_3.lineTo(size.width * 0.00007099247, size.height * 0.8815064);
    path_3.cubicTo(
        size.width * 0.00007099247,
        size.height * 0.8815064,
        size.width * -0.005845047,
        size.height * 1.017270,
        size.width * 0.08751006,
        size.height * 1.000280);
    path_3.lineTo(size.width * 0.4463297, size.height * 1.000280);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.007554783, size.height * 0.9443116),
        Offset(size.width * 0.9076255, size.height * -0.5837531), [
      const Color(0xffF29A4D).withOpacity(1.0),
      const Color(0xffE28028).withOpacity(1.0),
      const Color(0xffD9782C).withOpacity(1.0),
      const Color(0xffC96528).withOpacity(0.98),
      const Color(0xffC96528).withOpacity(0.98)
    ], [
      0.1598,
      0.3367,
      0.5191,
      0.7,
      0.8688
    ]);
    canvas.drawPath(path_3, paint3Fill);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffF19C50).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.1572957, size.height * 0.1842568),
        size.width * 0.03663212, paint4Fill);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.1099673, size.height * 0.1842568),
        size.width * 0.03663212, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.8032799, size.height * 1.000440);
    path_6.lineTo(size.width * 0.8032799, size.height * 0.8431278);
    path_6.cubicTo(
        size.width * 0.8032799,
        size.height * 0.8431278,
        size.width * 0.8056936,
        size.height * 0.7391061,
        size.width * 0.8713380,
        size.height * 0.7411450);
    path_6.cubicTo(
        size.width * 0.9369823,
        size.height * 0.7431838,
        size.width * 0.9386152,
        size.height * 0.8370912,
        size.width * 0.9386152,
        size.height * 0.8370912);
    path_6.lineTo(size.width * 0.9386152, size.height * 1.000440);
    path_6.lineTo(size.width * 0.8032799, size.height * 1.000440);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffBA5B27).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffCF7128).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.8709593, size.height * 0.8534021),
        size.width * 0.04590847, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.8558143, size.height * 0.8468458);
    path_8.lineTo(size.width * 0.8629372, size.height * 0.8588790);
    path_8.cubicTo(
        size.width * 0.8639548,
        size.height * 0.8605981,
        size.width * 0.8655876,
        size.height * 0.8605581,
        size.width * 0.8666051,
        size.height * 0.8588391);
    path_8.lineTo(size.width * 0.8851105, size.height * 0.8270169);
    path_8.cubicTo(
        size.width * 0.8861044,
        size.height * 0.8252978,
        size.width * 0.8877609,
        size.height * 0.8252978,
        size.width * 0.8887785,
        size.height * 0.8269769);
    path_8.lineTo(size.width * 0.8915945, size.height * 0.8317342);
    path_8.cubicTo(
        size.width * 0.8925884,
        size.height * 0.8334133,
        size.width * 0.8926120,
        size.height * 0.8361318,
        size.width * 0.8916182,
        size.height * 0.8378508);
    path_8.lineTo(size.width * 0.8674570, size.height * 0.8798673);
    path_8.cubicTo(
        size.width * 0.8664395,
        size.height * 0.8816263,
        size.width * 0.8647593,
        size.height * 0.8816263,
        size.width * 0.8637654,
        size.height * 0.8798673);
    path_8.lineTo(size.width * 0.8503715, size.height * 0.8564004);
    path_8.cubicTo(
        size.width * 0.8494250,
        size.height * 0.8547613,
        size.width * 0.8494013,
        size.height * 0.8521628,
        size.width * 0.8503005,
        size.height * 0.8504837);
    path_8.lineTo(size.width * 0.8521227, size.height * 0.8470457);
    path_8.cubicTo(
        size.width * 0.8530692,
        size.height * 0.8451267,
        size.width * 0.8547731,
        size.height * 0.8450468,
        size.width * 0.8558143,
        size.height * 0.8468458);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffECE7E7).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4270671, size.height * 0.001359239);

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.6107246, size.height * 1.001159);
    path_10.lineTo(size.width * 0.7350324, size.height * 1.001159);
    path_10.cubicTo(
        size.width * 0.7350324,
        size.height * 1.001159,
        size.width * 0.7506271,
        size.height * 0.5833133,
        size.width * 1.000000,
        size.height * 0.7458223);
    path_10.lineTo(size.width * 1.000000, size.height * 0.5343408);
    path_10.cubicTo(
        size.width,
        size.height * 0.5343008,
        size.width * 0.6776468,
        size.height * 0.3537619,
        size.width * 0.6107246,
        size.height * 1.001159);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xffCD6D28).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.4094609, size.height * 0.001359239);
    path_11.lineTo(size.width * 0.1596621, size.height * 0.5392180);
    path_11.cubicTo(
        size.width * 0.5501444,
        size.height * 0.5352203,
        size.width * 0.4359648,
        size.height * 0.02790437,
        size.width * 0.4297411,
        size.height * 0.001359239);
    path_11.lineTo(size.width * 0.4094609, size.height * 0.001359239);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xffED9143).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * -0.5895688, size.height * 1.565523);
    path_12.cubicTo(
        size.width * -0.5827536,
        size.height * 1.572559,
        size.width * -0.5750627,
        size.height * 1.577437,
        size.width * -0.5668276,
        size.height * 1.579635);
    path_12.cubicTo(
        size.width * -0.5758673,
        size.height * 1.576717,
        size.width * -0.5833688,
        size.height * 1.571800,
        size.width * -0.5895688,
        size.height * 1.565523);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xffC96528).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
