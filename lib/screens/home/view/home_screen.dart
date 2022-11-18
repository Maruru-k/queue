// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:anilib/screens/detailed_anime/controller/anime_screen_controller.dart';
import 'package:anilib/screens/detailed_anime/view/anime_screen.dart';
import 'package:queue/auth/controller/auth_controller.dart';
import 'package:queue/screens/home/controller/home_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

class HomeScreen extends GetView<HomeScreenController> {
  final auth = Get.put(AuthController());
  HomeScreen({Key? key}) : super(key: key) {
    Get.put(AnimeScreenController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anilibria"),
        leading: const Icon(Icons.menu, size: 36),
        titleTextStyle: QueueTextStyle.aniTitle(QueueColor.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Expanded(child: ScheduleScreen()),
            Center(
              child: ElevatedButton(
                onPressed: () => Get.to(() => AnimeScreen()),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(QueueColor.white),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Случайный релиз",
                    textAlign: TextAlign.center,
                    style: QueueTextStyle.medium(QueueColor.primary),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
