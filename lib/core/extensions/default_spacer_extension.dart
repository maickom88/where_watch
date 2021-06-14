import 'package:flutter/material.dart';

import '../theme/theme.dart';

extension DefaultSpacer on Widget {
  Widget withHeightSpacer({
    double height = DefaultApp.hSpacer,
  }) {
    return SizedBox(height: height);
  }

  Widget withWidthSpacer({
    double width = DefaultApp.wSpacer,
  }) {
    return SizedBox(width: width);
  }
}
