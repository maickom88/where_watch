import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/enums/enums.dart';
import '../../core/theme/theme.dart';
import '../pages/home/widgets/widgets.dart';
import 'components.dart';

class FavoritePoster extends StatelessWidget {
  const FavoritePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: DefaultApp.hPadding,
        bottom: DefaultApp.vPadding,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: WWPhoto(
                width: 120,
                image:
                    'https://www.justwatch.com/images/poster/245382594/s332/stranger-things.webp',
                posterType: PosterType.serie,
              ),
            ),
            withWidthSpacer(),
            Stack(
              children: [
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stranger Things',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      withHeightSpacer(),
                      Text(
                        '+7EP',
                        style: Theme.of(context).textTheme.headline3?.copyWith(
                            fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Container(
                        width: Get.width.percent(59),
                        height: 50,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return CardProvider(
                              image: '',
                              url: '',
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.bookmark,
                          size: 80,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
