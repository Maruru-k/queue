// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:queue/screens/auth_screen/view/auth_screen.dart';
import 'package:queue/screens/help_screen/view/help_screen.dart';
import 'package:queue/screens/home/view/home_screen.dart';
import 'package:queue/screens/map_screan/view/map_screen.dart';
import 'package:queue/screens/onboarding_screen/view/onboarding_screen.dart';
import 'package:queue/screens/registration_screen/view/registration_screen.dart';
import 'package:queue/screens/settings_screen/view/settings_screen.dart';

// Project imports:

class DistributionScreenController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late Widget screen;

  List<DrawerItem> drawerItem = [
    DrawerItem(
        icon: const Icon(Icons.car_crash_outlined), label: 'Нужна помошь!'),
    DrawerItem(
        icon: const Icon(Icons.remove_from_queue_outlined), label: 'Заявка'),
    DrawerItem(icon: const Icon(Icons.map_outlined), label: 'Карта'),
    DrawerItem(icon: const Icon(Icons.keyboard_hide_sharp), label: 'История'),
    DrawerItem(
        icon: const Icon(Icons.support_agent_rounded), label: 'Поддержка'),
    DrawerItem(icon: const Icon(Icons.settings), label: 'Настройки'),
  ];

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
        return const HelpScreen();
      case 1:
        return const HelpScreen();
      case 2:
        return const HomeScreen();
      default:
        throw ArgumentError();
    }
  }
}

class DrawerItem {
  Icon icon;
  String label;

  DrawerItem({required this.icon, required this.label});
}
