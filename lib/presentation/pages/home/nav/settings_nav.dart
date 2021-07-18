import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:where_watch_app/presentation/pages/home/nav/profile_nav.dart';

import '../../../../core/constants/constants.dart';

class SettingsNav extends StatelessWidget {
  const SettingsNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.onlyIcon,
                      height: 80,
                    ),
                    Text('v0.0.1'),
                  ],
                ),
              ),
              Positioned(
                left: -25,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    AppImages.onlyIcon,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        TileActionProfile(
          icon: FontAwesomeIcons.trash,
          title: 'Limpar dados',
          onTap: () {},
        ),
      ],
    );
  }
}
