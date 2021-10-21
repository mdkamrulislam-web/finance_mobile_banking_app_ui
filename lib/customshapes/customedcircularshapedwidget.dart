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
          MediaQuery.of(context).size.height / 12,
          (MediaQuery.of(context).size.width / 6 * 1)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}
