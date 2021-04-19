import 'package:flutter/material.dart';
import 'package:ordo/utils/colors.dart';

class BackgroundShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, double.infinity),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final shapeBounds = Rect.fromLTRB(0, 0, size.width, size.height);
//2
    final paint = Paint()..color = ColorPalate.secondaryColor.withOpacity(0.9);
//3
    canvas.drawRect(shapeBounds, paint);

    final firstColor = Paint()..color = ColorPalate.combineColor;

    var path = Path();

    path.moveTo(0, size.height - 50);
    path.lineTo(0, size.height + 65);
    path.lineTo(size.width/4, size.height);
    path.close();


    canvas.drawPath(path, firstColor);

    final secondColor = Paint()..color = ColorPalate.secondaryColor.withOpacity(0.9);

    var path2 = Path();

    path2.moveTo(size.width, size.height);
    path2.lineTo(size.width , size.height + 50);
    path2.lineTo(size.width/1.5, size.height);
    path2.close();


    canvas.drawPath(path2, secondColor);
    // canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
