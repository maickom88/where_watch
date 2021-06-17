import 'package:flutter/material.dart';

import '../../core/enums/enums.dart';
import '../../core/theme/theme.dart';

class WWPoster extends StatelessWidget {
  final double width;
  final VoidCallback onTap;
  final String image;
  final String title;
  final String year;
  final PosterType posterType;
  const WWPoster({
    Key? key,
    this.width = 140,
    required this.onTap,
    required this.image,
    required this.title,
    required this.year,
    required this.posterType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: DefaultApp.defaultBorderRadius(),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            decoration: BoxDecoration(
                borderRadius: DefaultApp.defaultBorderRadius(),
                color: Colors.red,
                boxShadow: [
                  DefaultApp.defaultBoxShadow(),
                ]),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                buildClipRRect(),
                Visibility(
                  visible: posterType == PosterType.serie,
                  child: buildTagType(context),
                ),
              ],
            ),
          ),
          withHeightSpacer(height: 5),
          Container(
            width: width,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: width,
            child: Text(
              year,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    ).withPadding(horizontal: 10, vertical: 0);
  }

  ClipRRect buildClipRRect() {
    return ClipRRect(
      borderRadius: DefaultApp.defaultBorderRadius(),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        width: width,
      ),
    );
  }

  Widget buildTagType(BuildContext context) {
    return Container(
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
    ).withPadding(horizontal: 10, vertical: 10);
  }
}
