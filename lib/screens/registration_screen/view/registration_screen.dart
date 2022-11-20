import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:queue/distribution/view/distribution_screen.dart';
import 'package:queue/screens/home/view/home_screen.dart';
import 'package:queue/screens/profile_selection_screen/view/profile_selection_screen.dart';
import 'package:queue/screens/registration_screen/controller/registration_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';
import 'package:queue/widgets/queue_outlined_button.dart';
import 'package:queue/widgets/queue_text_field.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/images/onboarding_rect.svg",
              fit: BoxFit.fill,
              color: QueueColor.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Регистрация",
                  textAlign: TextAlign.center,
                  style: QueueTextStyle.title4(QueueColor.white),
                ),
                const SizedBox(height: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Введите e-mail:",
                      style: QueueTextStyle.mediumBold(QueueColor.darkGray),
                    ),
                    const SizedBox(height: 10),
                    QueueTextField(
                        textEditingController:
                            controller.emailEditingController),
                    const SizedBox(height: 30),
                    Text(
                      "Введите пароль:",
                      style: QueueTextStyle.mediumBold(QueueColor.darkGray),
                    ),
                    const SizedBox(height: 10),
                    QueueTextField(
                        textEditingController:
                            controller.firstPasswordEditingController),
                    const SizedBox(height: 30),
                    Text(
                      "Введите пароль еще раз:",
                      style: QueueTextStyle.mediumBold(QueueColor.darkGray),
                    ),
                    const SizedBox(height: 10),
                    QueueTextField(
                        textEditingController:
                            controller.secondPasswordEditingController),
                  ],
                ),
                const SizedBox(height: 70),
                QueueOutlinedButton(
                  onPressed: () => Get.off(() => DistributionScreen()),
                  color: QueueColor.primary,
                  child: Text(
                    "Зарегестрироваться",
                    style: QueueTextStyle.title2(QueueColor.white),
                  ),
                ),
                const SizedBox(height: 92),
              ],
            ),
          )
        ],
      ),
    );
  }
}
