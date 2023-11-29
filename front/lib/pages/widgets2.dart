import 'package:flutter/material.dart';


class CustomPaintLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, 60),
      painter: LinePainter(),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    final double startPointX = 20; // X-coordinate of start point
    final double endPointX = size.width - 20; // X-coordinate of end point
    final double centerY = size.height / 2; // Y-coordinate for circles

    // Drawing line
    canvas.drawLine(Offset(startPointX, centerY), Offset(endPointX, centerY), paint);

    // Drawing circles at both ends of the line
    canvas.drawCircle(Offset(startPointX, centerY), 5.0, paint);
    canvas.drawCircle(Offset(endPointX, centerY), 5.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}