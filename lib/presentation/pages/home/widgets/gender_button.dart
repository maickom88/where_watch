import 'package:flutter/material.dart';
import 'package:where_watch_app/core/constants/colors_constants.dart';

import 'package:where_watch_app/core/enums/enums.dart';

class GenderButton extends StatelessWidget {
  final Function(GenderType) onGender;
  final GenderType gender;
  final bool isActive;
  const GenderButton({
    Key? key,
    required this.isActive,
    required this.gender,
    required this.onGender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Theme.of(context).textButtonTheme.style?.copyWith(
            foregroundColor: isActive
                ? MaterialStateProperty.all(Colors.white)
                : MaterialStateProperty.all(AppColors.textColor),
            textStyle: isActive
                ? MaterialStateProperty.all(
                    Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                : MaterialStateProperty.all(
                    Theme.of(context).textTheme.headline4,
                  ),
          ),
      onPressed: () => onGender(gender),
      child: Text(
        gender.toName(),
      ),
    );
  }
}
