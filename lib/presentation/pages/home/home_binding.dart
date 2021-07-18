import 'package:get/instance_manager.dart';
import 'package:where_watch_app/factories/build_home/build_get_posters.dart';

import 'home.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        getPosters: buildGetPosters(),
      ),
    );
  }
}
