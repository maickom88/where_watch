import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/theme/theme.dart';

class WWButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const WWButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.secondaryColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          boxShadow: [
            DefaultApp.defaultBoxShadow(),
          ],
        ),
        child: child,
      ),
    );
  }
}
