// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:queue/distribution/controller/distribution_screen_controller.dart';

// Project imports:

class DistributionScreen extends GetView<DistributionScreenController> {
  const DistributionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.screen,
          bottomNavigationBar: BottomNavigationBar(
            elevation: 8,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTabIndex,
            items: const [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.newspaper_outlined),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.calendar_month_outlined),
              ),BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ));
  }
}
