import 'package:flutter/material.dart';

import '../theme/theme.dart';

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
