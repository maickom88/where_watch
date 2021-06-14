import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Descubra em que plataforma de streaming encontrar seu filme ou série favorita e receba também as melhores novidades e sugestões para seu entretenimento.',
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
