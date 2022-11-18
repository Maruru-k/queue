// Package imports:
import 'package:get/get.dart';
import 'package:queue/screens/distribution_screen/controller/distribution_screen_controller.dart';
import 'package:queue/screens/home/controller/home_controller.dart';

// Project imports:

class DefaultBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DistributionScreenController());
    Get.put(HomeScreenController());
    Get.put(ScheduleScreenController());
  }
}
