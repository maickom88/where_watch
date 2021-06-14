import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../widget/widget.dart';

class FirstFlow extends StatelessWidget {
  const FirstFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
