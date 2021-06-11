import 'package:flutter/cupertino.dart';

class DefaultApp {
  static const double padding = 15;
  static const double hPadding = 15;
  static const double vPadding = 30;
  static const double wSpacer = 10;
  static const double hSpacer = 15;
}

extension DefaultPaddig on Widget {
  Widget withPadding({
    double horizontal = DefaultApp.hPadding,
    double vertical = DefaultApp.vPadding,
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this);
  }
}

extension DefaultSpacer on Widget {
  Widget withHeightSpacer({
    double height = DefaultApp.hSpacer,
  }) {
    return SizedBox(height: height);
  }

  Widget withWidthSpacer({
    double height = DefaultApp.wSpacer,
  }) {
    return SizedBox(height: height);
  }
}
