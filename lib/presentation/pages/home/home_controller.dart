import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:where_watch_app/core/errors/failures.dart';

import '../../../core/usecases/usecase.dart';
import '../../../domain/entities/posters_entity.dart';
import '../../../domain/usecases/get_posters.dart';
import '../../components/components.dart';
import 'nav/nav.dart';

class HomeController extends StreamStore<Failure, List<PostersEntity>> {
  final GetPosters getPosters;

  HomeController({
    required this.getPosters,
  }) : super([]);

  final List<PostersEntity> posters = [];

  Future<void> getAllPosters() async {
    setLoading(true);
    final result = await getPosters.call(NoParams());
    result.fold((left) {
      setError(left);
    }, (right) {
      posters.addAll(right.map((e) => e));
      update(right);
    });
    setLoading(false);
  }
}

class NavigatorController {
  static List<Widget> navs(HomeController controller) {
    return [
      ExplorerNav(controller: controller),
      FavoriteNav(),
      ProfileNav(),
      SettingsNav(),
    ];
  }

  static Widget load = WWLoading();

  static Widget error(Failure? failure, VoidCallback reload) => WWError(
        failure: failure,
        reload: reload,
      );
}
