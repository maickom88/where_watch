import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/theme/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
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
            ),
            withHeightSpacer(),
            Text(
              'Descubra em que plataforma de streaming encontrar seu filme ou série favorita e receba também as melhores novidades e sugestões para seu entretenimento.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ).withPadding(),
      ),
    );
  }
}
