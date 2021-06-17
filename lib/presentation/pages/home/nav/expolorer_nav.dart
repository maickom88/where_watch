import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';
import '../../../components/components.dart';
import '../widgets/widgets.dart';

class ExplorerNav extends StatelessWidget {
  const ExplorerNav({Key? key}) : super(key: key);

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
          ListViewBuilder(),
          withHeightSpacer(),
          TitleWithAction(
            onTap: () {},
            title: 'Filmes',
          ).withPadding(vertical: 0),
          ListViewBuilder(),
          withHeightSpacer(),
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return WWPoster(
            image:
                'https://www.justwatch.com/images/poster/245382594/s332/stranger-things.webp',
            onTap: () {},
            posterType: PosterType.serie,
            title: 'Stranger Things',
            year: '2021',
          );
        },
      ),
    );
  }
}
