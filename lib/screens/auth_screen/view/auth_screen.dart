import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:queue/canstants.dart';
import 'package:queue/distribution/view/distribution_screen.dart';
import 'package:queue/screens/auth_screen/controller/auth_controller.dart';
import 'package:queue/screens/home/view/home_screen.dart';
import 'package:queue/screens/profile_selection_screen/view/profile_selection_screen.dart';
import 'package:queue/screens/registration_screen/view/registration_screen.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';
import 'package:queue/widgets/queue_outlined_button.dart';
import 'package:queue/widgets/queue_text_field.dart';

class AuthScreen extends GetView<AuthScreenController> {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                appName,
                textAlign: TextAlign.center,
                style: QueueTextStyle.title4(QueueColor.white),
              ),
              SizedBox(height: Get.size.height / 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
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
                            controller.passwordEditingController),
                    const SizedBox(height: 10),
                    TextButton(
                        onPressed: () => Get.to(const RegistrationScreen()),
                        child: Text(
                          "Забыл пароль?",
                          style: QueueTextStyle.mediumBold(
                              QueueColor.darkGray.withOpacity(0.8)),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 42),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: QueueOutlinedButton(
                  onPressed: () => Get.off(() => DistributionScreen()),
                  color: QueueColor.primary,
                  child: Text(
                    "Вход",
                    style: QueueTextStyle.title2(QueueColor.white),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              TextButton(
                  onPressed: () => Get.to(() => const ProfileSelectionScreen()),
                  child: Text(
                    "Регистрация",
                    style: QueueTextStyle.mediumBold(QueueColor.darkGray),
                  )),
              const SizedBox(height: 44),
            ],
          )
        ],
      ),
    );
  }
}
