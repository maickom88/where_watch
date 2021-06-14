import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class ButtonCategory extends StatefulWidget {
  final double height;
  final String title;
  final EdgeInsets? margin;
  final Function(bool) isActive;
  const ButtonCategory({
    Key? key,
    this.margin,
    required this.height,
    required this.title,
    required this.isActive,
  }) : super(
          key: key,
        );

  @override
  _ButtonCategoryState createState() => _ButtonCategoryState();
}

class _ButtonCategoryState extends State<ButtonCategory>
    with AutomaticKeepAliveClientMixin<ButtonCategory> {
  late bool isActive;
  @override
  void initState() {
    isActive = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
        widget.isActive(isActive);
      },
      child: AnimatedContainer(
        padding: EdgeInsets.all(DefaultApp.padding),
        height: widget.height,
        margin: widget.margin,
        decoration: BoxDecoration(
          gradient: isActive
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).secondaryHeaderColor,
                  ],
                )
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.4),
                  ],
                ),
          boxShadow: [
            DefaultApp.defaultBoxShadow(),
          ],
          shape: BoxShape.circle,
        ),
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInBack,
        child: Center(
          child: Text(
            widget.title,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
