// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:queue/distribution/controller/distribution_screen_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

// Project imports:

class DistributionScreen extends GetView<DistributionScreenController> {
  const DistributionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            backgroundColor: QueueColor.background,
            elevation: 0,
            leading: Builder(builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu_outlined,
                    color: QueueColor.darkGray,
                  ));
            }),
          ),
          body: controller.screen,
          drawer: Drawer(
            backgroundColor: QueueColor.backgroundColor,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 210,
                  child: DrawerHeader(
                    decoration: const BoxDecoration(
                      color: QueueColor.darkGray,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Drawer Header',
                          style: QueueTextStyle.title(QueueColor.white),
                        ),
                        Text(
                          'Drawer Header',
                          style: QueueTextStyle.medium(QueueColor.white),
                        ),
                      ],
                    ),
                  ),
                ),

                ...List.generate(
                  controller.drawerItem.length,
                  (index) => ListTile(
                    onTap: () {
                      controller.changeTabIndex(index);
                    },
                    leading: controller.drawerItem[index].icon,
                    title: Text(
                      controller.drawerItem[index].label,
                      style: QueueTextStyle.title(
                          controller.selectedIndex.value == index
                              ? QueueColor.primary
                              : QueueColor.purple),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   elevation: 8,
          //   showSelectedLabels: false,
          //   showUnselectedLabels: false,
          //   currentIndex: controller.selectedIndex.value,
          //   onTap: controller.changeTabIndex,
          //   items: const [
          //     BottomNavigationBarItem(
          //       label: "",
          //       icon: Icon(Icons.newspaper_outlined),
          //     ),
          //     BottomNavigationBarItem(
          //       label: "",
          //       icon: Icon(Icons.calendar_month_outlined),
          //     ),
          //     BottomNavigationBarItem(
          //       label: "",
          //       icon: Icon(Icons.settings),
          //     ),
          //   ],
          // ),
        ));
  }
}
