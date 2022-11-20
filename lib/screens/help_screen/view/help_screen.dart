import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue/screens/help_screen/controller/help_screen_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';
import 'package:queue/widgets/queue_outlined_button.dart';
import 'package:queue/widgets/queue_text_field.dart';

class HelpScreen extends GetView<HelpScreenController> {
  const HelpScreen({Key? key}) : super(key: key);

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
                style: QueueTextStyle.mediumBold(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              QueueTextField(textEditingController: controller.arealController),
              const SizedBox(height: 30),
              Text(
                "Описание проблемы",
                style: QueueTextStyle.mediumBold(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              QueueTextField(
                  textEditingController: controller.descriptionController),
              const SizedBox(height: 30),
              Text(
                "Комментарий",
                style: QueueTextStyle.mediumBold(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              QueueTextField(
                  textEditingController: controller.commentController),
              const SizedBox(height: 30),
              Text(
                "Как со мной связаться",
                style: QueueTextStyle.mediumBold(QueueColor.darkGray),
              ),
              const SizedBox(height: 10),
              QueueTextField(
                  textEditingController: controller.contactController),
              const SizedBox(height: 94),
            ],
          ),
          Positioned(
            bottom: 92,
            child: QueueOutlinedButton(
              onPressed: () {Get.snackbar("Отправлено!","Успешно!");},
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
