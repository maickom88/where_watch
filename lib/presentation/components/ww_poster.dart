import 'package:flutter/material.dart';

import '../../core/enums/enums.dart';
import '../../core/theme/theme.dart';
import 'components.dart';

class WWPoster extends StatelessWidget {
  final double width;
  final VoidCallback onTap;
  final String image;
  final String? title;
  final String? year;
  final PosterType posterType;
  const WWPoster({
    Key? key,
    this.width = 140,
    required this.onTap,
    required this.image,
    this.title,
    this.year,
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
          WWPhoto(
            image: image,
            posterType: posterType,
          ),
          withHeightSpacer(height: 5),
          if (title != null)
            Container(
              width: width,
              child: Text(
                title!,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          if (year != null)
            Container(
              width: width,
              child: Text(
                year!,
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
}
