// Package imports:
import 'package:get/get.dart';
import 'package:queue/distribution/controller/distribution_screen_controller.dart';
import 'package:queue/screens/home/controller/home_controller.dart';
import 'package:queue/screens/map_screan/controller/map_controller.dart';
import 'package:queue/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:queue/screens/settings_screen/controller/sattings_controller.dart';

// Project imports:

class DefaultBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DistributionScreenController());
    Get.put(HomeScreenController());
    Get.put(MapScreenController());
    Get.put(SettingsScreenController());
    Get.put(OnboardingScreenController());
  }
}
