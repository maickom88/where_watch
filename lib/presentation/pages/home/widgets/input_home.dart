import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/constants.dart';

class InputHome extends StatelessWidget {
  final Function(String) onChanged;
  const InputHome({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChanged(value),
      style: Theme.of(context).textTheme.headline3,
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.search,
          color: AppColors.textColor,
        ),
        hintText: 'Toque para pesquisar',
      ),
    );
  }
}
