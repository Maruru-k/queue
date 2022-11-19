import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:queue/screens/home/view/home_screen.dart';
import 'package:queue/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:queue/theme/queue_colors.dart';
import 'package:queue/theme/queue_text_style.dart';

class OnboardingScreen extends GetView<OnboardingScreenController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnboardingScreenController>(builder: (controller) {
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: controller.contents.length,
                onPageChanged: (int index) {
                  controller.currentIndex = index;
                  controller.update();
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          controller.contents[index].image,
                          height: 300,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              controller.contents[index].upTitle,
                              style: QueueTextStyle.title3(QueueColor.black),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              controller.contents[index].midTitle != null
                                  ? controller.contents[index].midTitle!
                                  : "",
                              textAlign: TextAlign.center,
                              style: QueueTextStyle.title3(QueueColor.black),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              controller.contents[index].downTitle != null
                                  ? controller.contents[index].downTitle!
                                  : "",
                              textAlign: TextAlign.center,
                              style: QueueTextStyle.title4(QueueColor.black),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              child: TextButton(
                child: Text(
                    controller.currentIndex == controller.contents.length - 1
                        ? "Continue"
                        : "Next"),
                onPressed: () {
                  if (controller.currentIndex ==
                      controller.contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(),
                      ),
                    );
                  }
                  controller.pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(color: Colors.white)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
              ),
            )
          ],
        );
      }),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: controller.currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
