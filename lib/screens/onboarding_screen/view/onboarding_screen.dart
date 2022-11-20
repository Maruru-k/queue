import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:queue/canstants.dart';
import 'package:queue/screens/auth_screen/view/auth_screen.dart';
import 'package:queue/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';
import 'package:queue/widgets/queue_outlined_button.dart';

class OnboardingScreen extends GetView<OnboardingScreenController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnboardingScreenController>(builder: (controller) {
        return Column(
          children: [
            Expanded(
                child: Stack(
                  alignment: Alignment.center,
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
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Добро пожаловать",
                                  style: QueueTextStyle.title3(QueueColor.white),
                                ),
                                Text(
                                  "в",
                                  textAlign: TextAlign.center,
                                  style: QueueTextStyle.title3(QueueColor.white),
                                ),
                                Text(
                                  appName,
                                  textAlign: TextAlign.center,
                                  style: QueueTextStyle.title4(QueueColor.white),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: QueueOutlinedButton(
                              onPressed: () => Get.off(() => const AuthScreen() ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Spacer(),
                                  Text(
                                    "Поехалиж!",
                                    style:
                                        QueueTextStyle.title2(QueueColor.darkGray),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios_outlined)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 152)
                        ],
                      ),
                    )
                  ],
                )),
          ],
        );
      }),
    );
  }
}
