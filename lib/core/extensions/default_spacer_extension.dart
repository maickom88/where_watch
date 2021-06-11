import 'package:flutter/material.dart';

import '../theme/theme.dart';

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
