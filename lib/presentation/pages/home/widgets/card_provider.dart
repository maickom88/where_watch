import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class CardProvider extends StatelessWidget {
  final String url;
  final String image;
  const CardProvider({
    Key? key,
    required this.url,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Material(
        color: Colors.transparent,
        borderRadius: DefaultApp.defaultBorderRadius(),
        child: InkWell(
          borderRadius: DefaultApp.defaultBorderRadius(),
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: DefaultApp.defaultBorderRadius(),
              color: Colors.white.withOpacity(0.3),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: DefaultApp.defaultBorderRadius(border: 5),
                  child: Image.network(
                    'https://www.justwatch.com/images/icon/207360008/s100',
                    height: 35,
                  ),
                ),
                withWidthSpacer(),
                Text(
                  'Assistir',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
