import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class HeaderMessageFlow extends StatelessWidget {
  final String message;
  const HeaderMessageFlow({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3,
        ).withPadding(vertical: 0),
        Text(
          '(Opcional)',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ).withPadding(vertical: 0),
      ],
    );
  }
}
