import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import 'widget/widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderTitle(),
            withHeightSpacer(),
            Description(),
            withHeightSpacer(),
            Ilustration(),
            withHeightSpacer(),
          ],
        ).withPadding(),
      ),
      floatingActionButton: BottonButtom(),
    );
  }
}
