import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Bem vindo ao\n',
            style: Theme.of(context).textTheme.headline1,
          ),
          TextSpan(
            text: 'Where Watch',
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: AppColors.primaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
