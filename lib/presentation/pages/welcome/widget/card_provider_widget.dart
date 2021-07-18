import 'package:flutter/material.dart';

import 'package:where_watch_app/core/theme/theme.dart';

class CardProvider extends StatefulWidget {
  final String image;
  final Function(bool) onSelected;
  const CardProvider({
    Key? key,
    required this.image,
    required this.onSelected,
  }) : super(key: key);

  @override
  _CardProviderState createState() => _CardProviderState();
}

class _CardProviderState extends State<CardProvider>
    with AutomaticKeepAliveClientMixin<CardProvider> {
  late bool isSelected;
  @override
  void initState() {
    isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onSelected(isSelected);
      },
      child: AnimatedOpacity(
        opacity: isSelected ? 1 : 0.4,
        duration: Duration(milliseconds: 150),
        curve: Curves.easeInBack,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: DefaultApp.defaultBorderRadius(border: 15),
            border: isSelected
                ? Border.all(width: 4, color: Theme.of(context).primaryColor)
                : DefaultApp.zero,
            boxShadow: [
              DefaultApp.defaultBoxShadow(),
            ],
          ),
          duration: Duration(milliseconds: 250),
          curve: Curves.easeInBack,
          child: ClipRRect(
            borderRadius: DefaultApp.defaultBorderRadius(border: 15),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
