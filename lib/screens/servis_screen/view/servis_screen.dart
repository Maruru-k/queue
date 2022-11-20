import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue/screens/servis_screen/controller/servis_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';
import 'package:queue/widgets/queue_outlined_button.dart';
import 'package:queue/widgets/queue_text_field.dart';

class ServisScreen extends GetView<ServisScreenController> {
  const ServisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: QueueColor.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Заявка на помошь",
                style: QueueTextStyle.title3(QueueColor.darkGray),
              ),
              const SizedBox(height: 52),
              Text(
                "Мое местоположение",
                style: QueueTextStyle.title2(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              Divider(),
              const SizedBox(height: 30),
              Text(
                "Описание проблемы",
                style: QueueTextStyle.title2(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              Divider(),
              const SizedBox(height: 30),
              Text(
                "Комментарий",
                style: QueueTextStyle.title2(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              Divider(),
              const SizedBox(height: 30),
              Text(
                "Как со мной связаться",
                style: QueueTextStyle.title2(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              Divider(),
              const SizedBox(height: 94),
              Divider(),
            ],
          ),
          Positioned(
            bottom: 92,
            child: QueueOutlinedButton(
              onPressed: () {},
              color: QueueColor.primary,
              child: Text(
                "Отправить",
                style: QueueTextStyle.title2(QueueColor.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
