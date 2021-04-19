import 'package:flutter/widgets.dart';

class Dp {
  double? _scale;

  Dp(BuildContext context, int width) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    this._scale = mediaQuery.size.width.toDouble() / width;
  }

  double dp(double px) {
    return (_scale ?? 0) * px;
  }

  double sp(double sp) {
    return dp(sp) / 1.05;
  }
}

Dp? _gdp;

void gInitDp(BuildContext context, {int width = 750}) {
  _gdp = Dp(context, width);
}

double gDp(double px) {
  return _gdp?.dp(px) ?? 0;
}

double gSP(double sp) {
  return _gdp?.sp(sp) ?? 0;
}
