import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/theme/theme.dart';
import 'widget.dart';

class CategoriesChoose extends StatelessWidget {
  final Function(List<CategoryType>) onCategories;

  const CategoriesChoose({
    Key? key,
    required this.onCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categories = <CategoryType>[];

    void returnTypecategories(
        {required bool isActive, required CategoryType category}) {
      if (isActive) {
        categories.add(category);
      } else {
        categories.removeWhere((element) => element == category);
      }
      onCategories(categories);
    }

    return Container(
      width: 500,
      child: Stack(
        children: [
          blocCategoryOne(
            onCategory: (isActive, category) =>
                returnTypecategories(category: category, isActive: isActive),
          ),
          blocCategoryTwo(
            onCategory: (isActive, category) =>
                returnTypecategories(category: category, isActive: isActive),
          ),
          blocCategoryThree(
            onCategory: (isActive, category) =>
                returnTypecategories(category: category, isActive: isActive),
          ),
          blocCategoryFour(
            onCategory: (isActive, category) =>
                returnTypecategories(category: category, isActive: isActive),
          ),
        ],
      ),
    );
  }

  Positioned blocCategoryFour({
    required Function(bool, CategoryType) onCategory,
  }) {
    return Positioned(
      top: 220,
      left: 100,
      child: Row(
        children: [
          ButtonCategory(
            height: 70,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.horror,
            ),
            title: CategoryType.horror.toName(),
          ),
          withWidthSpacer(width: 10),
          withWidthSpacer(width: 10),
          ButtonCategory(
            height: 100,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.documentary,
            ),
            margin: EdgeInsets.only(top: 60),
            title: CategoryType.documentary.toName(),
          ),
          ButtonCategory(
            height: 120,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.animation,
            ),
            margin: EdgeInsets.only(top: 80, left: 50),
            title: CategoryType.animation.toName(),
          ),
        ],
      ),
    );
  }

  Positioned blocCategoryThree({
    required Function(bool, CategoryType) onCategory,
  }) {
    return Positioned(
      top: 120,
      left: 10,
      child: Row(
        children: [
          ButtonCategory(
            height: 115,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.warAndMilitary,
            ),
            title: CategoryType.warAndMilitary.toName(),
          ),
          withWidthSpacer(width: 10),
          withWidthSpacer(width: 10),
          ButtonCategory(
            height: 80,
            margin: EdgeInsets.only(top: 30),
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.family,
            ),
            title: CategoryType.family.toName(),
          ),
          withWidthSpacer(),
          ButtonCategory(
            height: 130,
            margin: EdgeInsets.only(top: 60),
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.sportAndFitness,
            ),
            title: CategoryType.sportAndFitness.toName(),
          ),
        ],
      ),
    );
  }

  Positioned blocCategoryTwo({
    required Function(bool, CategoryType) onCategory,
  }) {
    return Positioned(
      top: 80,
      left: 130,
      child: Row(
        children: [
          withWidthSpacer(width: 60),
          ButtonCategory(
            height: 70,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.comedy,
            ),
            title: CategoryType.comedy.toName(),
          ),
          withWidthSpacer(width: 10),
          ButtonCategory(
            height: 70,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.family,
            ),
            margin: EdgeInsets.only(top: 20),
            title: CategoryType.fantasy.toName(),
          ),
          withWidthSpacer(width: 10),
          ButtonCategory(
            height: 80,
            isActive: (isActive) => onCategory(
              isActive,
              CategoryType.fiction,
            ),
            margin: EdgeInsets.only(top: 20),
            title: CategoryType.fiction.toName(),
          ),
        ],
      ),
    );
  }

  Row blocCategoryOne({required Function(bool, CategoryType) onCategory}) {
    return Row(
      children: [
        withWidthSpacer(width: 70),
        ButtonCategory(
          height: 115,
          isActive: (isActive) => onCategory(
            isActive,
            CategoryType.actionAndAdventure,
          ),
          title: CategoryType.actionAndAdventure.toName(),
        ),
        withWidthSpacer(width: 15),
        ButtonCategory(
          height: 70,
          isActive: (isActive) => onCategory(
            isActive,
            CategoryType.drama,
          ),
          margin: EdgeInsets.only(bottom: 50),
          title: CategoryType.drama.toName(),
        ),
        withWidthSpacer(width: 25),
        ButtonCategory(
          height: 70,
          isActive: (isActive) => onCategory(
            isActive,
            CategoryType.history,
          ),
          margin: EdgeInsets.only(bottom: 30),
          title: CategoryType.history.toName(),
        ),
      ],
    );
  }
}
