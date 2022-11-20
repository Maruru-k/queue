// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
// import 'package:anilib/screens/detailed_anime/controller/anime_screen_controller.dart';
// import 'package:anilib/screens/detailed_anime/view/anime_screen.dart';
import 'package:queue/auth/controller/auth_controller.dart';
import 'package:queue/screens/help_screen/controller/help_screen_controller.dart';
import 'package:queue/screens/help_screen/view/help_screen.dart';
import 'package:queue/screens/home/controller/home_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class HomeScreen extends GetView<HomeScreenController> {
  HomeScreen({Key? key}) : super(key: key) {
    Get.lazyPut(() => HelpScreenController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: QueueColor.white,
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
                child: GetBuilder<HomeScreenController>(builder: (controller) {
                  return Column(
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
                  );
                }),
              ),
            ),
            ...List.generate(
              controller.drawerItem.length,
              (index) => ListTile(
                onTap: () {
                  controller.selectedIndex = index;
                  controller.update();
                  Get.off(() => const HelpScreen());
                },
                leading: controller.drawerItem[index].icon,
                title: Text(
                  controller.drawerItem[index].label,
                  style: QueueTextStyle.title(controller.selectedIndex == index
                      ? QueueColor.primary
                      : QueueColor.purple),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {},
            animationDuration: const Duration(milliseconds: 500),
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text('Item 1'),
                  );
                },
                body: const ListTile(
                  title: Text('Item 1 child'),
                  subtitle: Text('Details goes here'),
                ),
              ),
              ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text('Item 2'),
                  );
                },
                body: const ListTile(
                  title: Text('Item 2 child'),
                  subtitle: Text('Details goes here'),
                ),
              ),
            ],
          ),
        ],
      ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       // const Expanded(child: ScheduleScreen()),
      //       Center(
      //         child: ElevatedButton(
      //           onPressed: () {},
      //           // Get.to(() => AnimeScreen()),
      //           style: ButtonStyle(
      //             backgroundColor: MaterialStateProperty.all(QueueColor.white),
      //           ),
      //           child: SizedBox(
      //             width: double.infinity,
      //             child: Text(
      //               "Случайный релиз",
      //               textAlign: TextAlign.center,
      //               style: QueueTextStyle.medium(QueueColor.primary),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
