import '../constants/category_types_const.dart';

enum CategoryType {
  drama,
  actionAndAdventure,
  history,
  family,
  fantasy,
  horror,
  documentary,
  animation,
  warAndMilitary,
  sportAndFitness,
  comedy,
  fiction
}

extension CategoryForString on CategoryType {
  String toName() {
    switch (this) {
      case CategoryType.comedy:
        return comedy;
      case CategoryType.actionAndAdventure:
        return actionAndAdventure;
      case CategoryType.animation:
        return animation;
      case CategoryType.documentary:
        return documentary;
      case CategoryType.drama:
        return drama;
      case CategoryType.family:
        return family;
      case CategoryType.history:
        return history;
      case CategoryType.fantasy:
        return fantasy;
      case CategoryType.horror:
        return horror;
      case CategoryType.warAndMilitary:
        return warAndMilitary;
      case CategoryType.sportAndFitness:
        return sportAndFitness;
      default:
        return fiction;
    }
  }
}

extension StringForCategory on String {
  CategoryType toName() {
    switch (this) {
      case comedy:
        return CategoryType.comedy;
      case actionAndAdventure:
        return CategoryType.actionAndAdventure;
      case animation:
        return CategoryType.animation;
      case documentary:
        return CategoryType.documentary;
      case drama:
        return CategoryType.drama;
      case family:
        return CategoryType.family;
      case history:
        return CategoryType.history;
      case fantasy:
        return CategoryType.fantasy;
      case horror:
        return CategoryType.horror;
      case warAndMilitary:
        return CategoryType.warAndMilitary;
      case sportAndFitness:
        return CategoryType.sportAndFitness;
      default:
        return CategoryType.fiction;
    }
  }
}
