import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue/screens/home/view/home_screen.dart';
import 'package:queue/screens/profile_selection_screen/controller/profile_selection_controller.dart';
import 'package:queue/screens/registration_screen/view/registration_screen.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';
import 'package:queue/widgets/queue_outlined_button.dart';

class ProfileSelectionScreen extends GetView<ProfileSelectionScreenController> {
  const ProfileSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: QueueColor.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: QueueColor.primary,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 30,
                right: 30,
                child: Image.asset(
                  "assets/images/reg_img.png",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Text(
                      "Я",
                      style: QueueTextStyle.title3(QueueColor.black),
                    ),
                    const SizedBox(height: 36),
                    QueueOutlinedButton(
                      onPressed: () =>
                          Get.off(() => const RegistrationScreen()),
                      color: QueueColor.primary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            "Физ. лицо!",
                            style: QueueTextStyle.title2(QueueColor.white),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    QueueOutlinedButton(
                      onPressed: () => Get.off(() => const RegistrationScreen(
                            servisRegForm: true,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            "Юр. лицо!",
                            style: QueueTextStyle.title2(QueueColor.darkGray),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                    const SizedBox(height: 115)
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
