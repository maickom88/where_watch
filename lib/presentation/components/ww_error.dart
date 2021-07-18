import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:where_watch_app/core/errors/failures.dart';

import '../../core/constants/constants.dart';

class WWError extends StatelessWidget {
  final Failure? failure;
  final VoidCallback reload;
  const WWError({
    Key? key,
    this.failure,
    required this.reload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            LottieBuilder.asset(
              AppAnimations.error,
            ),
            Text(
              '${failure?.message}',
              textAlign: TextAlign.center,
              style:
                  AppTypography.size30WithBold().copyWith(color: Colors.white),
            ),
            TextButton(
              onPressed: reload,
              child: Text('Reload'),
            ),
          ],
        ),
      ),
    );
  }
}
