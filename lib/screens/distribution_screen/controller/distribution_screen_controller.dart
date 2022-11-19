// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:queue/screens/home/view/home_screen.dart';
import 'package:queue/screens/map_screan/view/map_screen.dart';

// Project imports:

class DistributionScreenController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late Widget screen;

  @override
  void onInit() {
    screen = _buildPage(selectedIndex.value);
    super.onInit();
  }

  void changeTabIndex(int index) {
    screen = _buildPage(index);
    selectedIndex.value = index;
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return  HomeScreen();
      case 1:
        return const MapScreen();
      default:
        throw ArgumentError();
    }
  }
}
