import '../constants/constants.dart';

enum GenderType { all, movies, tvProgram, documentary }

extension GenderForString on GenderType {
  String toName() {
    switch (this) {
      case GenderType.documentary:
        return documentary;
      case GenderType.all:
        return all;
      case GenderType.movies:
        return movies;
      default:
        return tvProgram;
    }
  }
}

extension StringForGender on String {
  GenderType toName() {
    switch (this) {
      case all:
        return GenderType.all;
      case movies:
        return GenderType.movies;
      case documentary:
        return GenderType.documentary;
      default:
        return GenderType.tvProgram;
    }
  }
}
