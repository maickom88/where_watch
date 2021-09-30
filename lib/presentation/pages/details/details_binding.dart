import 'package:get/instance_manager.dart';

import 'details.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
