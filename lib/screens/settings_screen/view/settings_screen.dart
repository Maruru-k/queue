import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue/screens/map_screan/controller/map_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

class SettingsScreen extends GetView<MapScreenController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Queue"),
        leading: const Icon(Icons.menu, size: 36),
        titleTextStyle: QueueTextStyle.title4(QueueColor.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [],
        ),
      ),
    );
  }
}
