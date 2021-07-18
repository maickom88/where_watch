import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../widgets/widgets.dart';

class FavoriteNav extends StatelessWidget {
  const FavoriteNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FavoriteFilters(
          onFilter: (filter) => print(filter),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => FavoritePoster(),
          ),
        )
      ],
    );
  }
}
