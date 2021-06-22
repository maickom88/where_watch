import 'package:flutter/material.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';

class ButtonFavoriteFilter extends StatefulWidget {
  final String title;
  final double width;
  final Filters filter;
  final bool active;
  final Function(Filters) onFilter;
  const ButtonFavoriteFilter({
    Key? key,
    required this.active,
    required this.filter,
    required this.title,
    this.width = 140,
    required this.onFilter,
  }) : super(key: key);

  @override
  _ButtonFavoriteFilterState createState() => _ButtonFavoriteFilterState();
}

class _ButtonFavoriteFilterState extends State<ButtonFavoriteFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: DefaultApp.vPadding),
      child: InkWell(
        onTap: () => widget.onFilter(widget.filter),
        child: AnimatedContainer(
          height: 50,
          decoration: BoxDecoration(
            color: widget.active
                ? Colors.white.withOpacity(1)
                : Colors.white.withOpacity(0.3),
            borderRadius: DefaultApp.defaultBorderRadius(),
          ),
          width: widget.width,
          duration: Duration(milliseconds: 250),
          curve: Curves.easeInBack,
          child: Center(
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.button?.copyWith(
                    color: widget.active
                        ? Theme.of(context).primaryColor
                        : Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
