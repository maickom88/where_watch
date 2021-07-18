import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/constants/constants.dart';

class WWDialogLoading extends StatelessWidget {
  const WWDialogLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: SizedBox(
              width: double.infinity,
              height: 80,
              child: LottieBuilder.asset(
                AppAnimations.load,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
