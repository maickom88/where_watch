import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../core/enums/enums.dart';
import '../../core/theme/theme.dart';

class WWPhoto extends StatelessWidget {
  final double width;
  final String image;
  final PosterType posterType;
  const WWPhoto({
    Key? key,
    this.width = 140,
    required this.posterType,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: BoxConstraints(maxHeight: 200),
      decoration: BoxDecoration(
          borderRadius: DefaultApp.defaultBorderRadius(),
          color: Colors.grey.withOpacity(0.3),
          boxShadow: [
            DefaultApp.defaultBoxShadow(),
          ]),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          ClipRRect(
            borderRadius: DefaultApp.defaultBorderRadius(),
            child: FancyShimmerImage(
              imageUrl: image,
              width: width,
            ),
          ),
          Visibility(
            visible: posterType == PosterType.serie,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: DefaultApp.defaultBorderRadius(),
                  boxShadow: [
                    DefaultApp.defaultBoxShadow(),
                  ]),
              child: Text(
                'Série',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white),
              ),
            ).withPadding(horizontal: 10, vertical: 10),
          ),
        ],
      ),
    );
  }
}
