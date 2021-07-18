import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme.dart';
import '../../../../domain/entities/posters_entity.dart';
import '../../../components/components.dart';
import '../home.dart';
import '../widgets/widgets.dart';

class ExplorerNav extends StatelessWidget {
  final HomeController controller;
  const ExplorerNav({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          withHeightSpacer(),
          Row(
            children: [
              Expanded(
                child: InputHome(onChanged: (value) => print(value)),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(FontAwesomeIcons.filter, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ).withPadding(vertical: 0),
          withHeightSpacer(),
          FilterGenders(
            onGender: (gender) => print(gender),
          ),
          withHeightSpacer(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width.percent(40),
                height: 50,
                child: WWButton(
                  onTap: () {},
                  color: Color(0xff8342D6),
                  child: Center(
                    child: Text(
                      'Popular',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
              withWidthSpacer(),
              SizedBox(
                width: Get.width.percent(40),
                height: 50,
                child: WWButton(
                  onTap: () {},
                  color: Color(0xff8342D6),
                  child: Center(
                    child: Text(
                      'Lançamentos',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
          withHeightSpacer(),
          TitleWithAction(
            onTap: () {},
            title: 'Populares',
          ).withPadding(vertical: 0),
          ListViewBuilder(
            posters: controller.posters,
          ),
          withHeightSpacer(),
          TitleWithAction(
            onTap: () {},
            title: 'Filmes',
          ).withPadding(vertical: 0),
          ListViewBuilder(
            posters: controller.posters,
          ),
          withHeightSpacer(),
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  final List<PostersEntity> posters;
  const ListViewBuilder({
    Key? key,
    required this.posters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: posters.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          if (posters[index].image.isNotEmpty) {
            return WWPoster(
              image: posters[index].image,
              onTap: () {},
              posterType: posters[index].typePoster,
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
