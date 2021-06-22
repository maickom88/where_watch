import 'package:flutter/material.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';
import 'widgets.dart';

class FavoriteFilters extends StatefulWidget {
  final Function(Filters) onFilter;
  const FavoriteFilters({
    Key? key,
    required this.onFilter,
  }) : super(key: key);

  @override
  _FavoriteFiltersState createState() => _FavoriteFiltersState();
}

class _FavoriteFiltersState extends State<FavoriteFilters> {
  late Filters filter;
  @override
  void initState() {
    filter = Filters.relevance;
    super.initState();
  }

  void updateFilter(Filters onFilter) {
    setState(() {
      filter = onFilter;
    });
    widget.onFilter(filter);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: DefaultApp.hPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            ButtonFavoriteFilter(
              title: 'Relevancia',
              filter: Filters.relevance,
              onFilter: (onFilter) => updateFilter(onFilter),
              active: filter == Filters.relevance,
            ),
            widget.withWidthSpacer(),
            ButtonFavoriteFilter(
              title: 'Popularidade',
              filter: Filters.popularity,
              onFilter: (onFilter) => updateFilter(onFilter),
              active: filter == Filters.popularity,
            ),
            widget.withWidthSpacer(),
            ButtonFavoriteFilter(
              title: 'Ano de lançamento',
              width: 220,
              filter: Filters.yearOfRelease,
              onFilter: (onFilter) => updateFilter(onFilter),
              active: filter == Filters.yearOfRelease,
            ),
          ],
        ),
      ),
    );
  }
}
