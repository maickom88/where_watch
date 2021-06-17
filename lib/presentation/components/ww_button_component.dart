import 'package:flutter/material.dart';

import '../../core/theme/theme.dart';

class WWButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final Color? color;
  const WWButton({
    Key? key,
    this.color,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: DefaultApp.defaultBorderRadius(border: 14),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: DefaultApp.defaultBorderRadius(border: 14),
          gradient: color == DefaultApp.zero
              ? DefaultApp.defaultLinearGradient()
              : DefaultApp.zero,
          boxShadow: [
            DefaultApp.defaultBoxShadow(),
          ],
        ),
        child: child,
      ),
    );
  }
}
