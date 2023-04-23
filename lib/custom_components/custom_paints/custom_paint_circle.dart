import 'dart:math';
import 'package:flutter/material.dart';
import 'package:padc_custom_widget_assignment/utils/colors.dart';
import '../../utils/dimens.dart';

class CustomPainterCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var outerCirclePaint = Paint()
      ..color = DETAILS_SCREEN_OUTER_CIRCLE_COLOR
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke;

    var innerCirclePaint = Paint()
      ..color = DETAILS_SCREEN_INNER_CIRCLE_COLOR
      ..blendMode = BlendMode.srcOver
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;

    var middleCirclePaint = Paint()
      ..color = DETAILS_SCREEN_MIDDLE_CIRCLE_COLOR
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;

    var linePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    /// Outer Circle
    canvas.drawCircle(
        Offset(size.height / 2, size.width / 2), 150, outerCirclePaint);

    /// Inner Circle
    canvas.drawCircle(
        Offset(size.height / 2, size.width / 2), 145, innerCirclePaint);

    /// Middle Circle
    canvas.drawCircle(
        Offset(size.height / 2, size.width / 2), 90, middleCirclePaint);

    /// Middle Line Through
    canvas.drawLine(const Offset(260, 150), const Offset(320, 150), linePaint);

    /// Dotted Circle
    var dottedCirclePaint = Paint()..color = Colors.white;
    int numberOfDots = 20;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    double filledCircleRadius = 2;
    double radiantStep = 2 * pi / numberOfDots;
    for (int i = 0; i < numberOfDots; i++) {
      canvas.drawCircle(
        Offset(centerX + sin(i * radiantStep) * 115,
            centerY + cos(i * radiantStep) * 115),
        filledCircleRadius,
        dottedCirclePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomCirclePaint extends StatelessWidget {
  const CustomCirclePaint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomPaint(
        size: const Size(SIZE_300X, SIZE_300X),
        painter: CustomPainterCircle(),
      ),
    );
  }
}
