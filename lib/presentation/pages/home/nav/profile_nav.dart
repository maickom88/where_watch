import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:where_watch_app/core/constants/constants.dart';

import '../../../../core/theme/theme.dart';

class ProfileNav extends StatelessWidget {
  const ProfileNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              HeaderProfileNav(),
              DefaultApp.defaultSpaceHeight(),
              TileActionProfile(
                icon: FontAwesomeIcons.solidUserCircle,
                title: 'Minhas informações',
                onTap: () {},
              ),
              TileActionProfile(
                icon: FontAwesomeIcons.thList,
                title: 'Meus favoritos',
                onTap: () {},
              ),
              TileActionProfile(
                icon: FontAwesomeIcons.solidStar,
                title: 'Minhas avaliações',
                onTap: () {},
              ),
              TileActionProfile(
                icon: FontAwesomeIcons.github,
                title: 'Repositorio',
                onTap: () {},
              ),
              TileActionProfile(
                icon: Icons.help,
                title: 'Ajuda',
                onTap: () {},
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  'Avaliar',
                  style: AppTypography.size20WithBold().copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ),
            ).withPadding(),
          ),
        ],
      ),
    );
  }
}

class TileActionProfile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const TileActionProfile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide(width: 1, color: Colors.white),
      )),
      child: ListTile(
        contentPadding:
            EdgeInsets.symmetric(vertical: 8, horizontal: DefaultApp.hPadding),
        onTap: onTap,
        title: Text(
          title,
          style: AppTypography.size16().copyWith(color: Colors.white),
        ),
        trailing: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class HeaderProfileNav extends StatelessWidget {
  const HeaderProfileNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            AppImages.avatar,
          ),
        ),
        Column(
          children: [
            Text(
              'Comunidade',
              style:
                  AppTypography.size20WithBold().copyWith(color: Colors.white),
            ).withBottomPadding(bottom: 5),
            Text(
              'Feito para dev em versão \nbeta v0.0.1 ',
              style: AppTypography.size16(),
            ),
          ],
        ),
      ],
    ).withPadding();
  }
}
