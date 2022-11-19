// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
// import 'package:anilib/screens/detailed_anime/controller/anime_screen_controller.dart';
// import 'package:anilib/screens/detailed_anime/view/anime_screen.dart';
import 'package:queue/auth/controller/auth_controller.dart';
import 'package:queue/screens/home/controller/home_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class HomeScreen extends GetView<HomeScreenController> {
  String dropdownValue = list.first;

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Queue"),
        leading: const Icon(Icons.menu, size: 36),
        titleTextStyle: QueueTextStyle.aniTitle(QueueColor.white),
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
