import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:where_watch_app/core/constants/constants.dart';

import '../../../core/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.inputColor,
                  filled: true,
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ).withPadding(),
        ),
      ),
    );
  }
}
