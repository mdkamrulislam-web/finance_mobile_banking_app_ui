import 'package:flutter/material.dart';
import 'circularcustomshape.dart';

class CustomedCircularShapedWidget extends StatelessWidget {
  const CustomedCircularShapedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          55,
          (55 * 1.4142756349952963)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}
