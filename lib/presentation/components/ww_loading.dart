import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/constants/constants.dart';

class WWLoading extends StatelessWidget {
  const WWLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: LottieBuilder.asset(
          AppAnimations.load,
        ),
      ),
    );
  }
}
