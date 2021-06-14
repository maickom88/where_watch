import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';
import '../widget/widget.dart';

class SecondFlow extends StatelessWidget {
  final Function(List<CategoryType>) onCategories;

  const SecondFlow({
    Key? key,
    required this.onCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController(initialScrollOffset: 80);
    return SingleChildScrollView(
      child: Column(
        children: [
          withHeightSpacer(height: 20),
          HeaderMessageFlow(
            message:
                'Quais categorias de filmes você gosta e são as favoritas?',
          ),
          Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(vertical: DefaultApp.vPadding),
            height: Get.height.percent(75),
            child: ListView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                CategoriesChoose(
                  onCategories: (categories) => onCategories(categories),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
