import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue/canstants.dart';

class OnboardingScreenController extends GetxController {
  int currentIndex = 0;
  PageController _pageController;

  List<OnbordingContent> contents = [
    OnbordingContent(
        image: 'assets/images/onboarding_rect.svg',
        upTitle: 'Добро пожаловать',
        midTitle: "в",
        downTitle: appName),
    OnbordingContent(
        image: 'assets/images/onboarding_rect.svg',
        upTitle: 'Fast Delevery',
        downTitle: appName),
    OnbordingContent(
      image: 'assets/images/onboarding_rect.svg',
      upTitle: 'Reward surprises',
    ),
  ];

  PageController get pageController => _pageController;

  OnboardingScreenController()
      : _pageController = PageController(initialPage: 0);
}

class OnbordingContent {
  String image;
  String upTitle;
  String? midTitle;
  String? downTitle;

  OnbordingContent({
    required this.image,
    required this.upTitle,
    this.midTitle,
    this.downTitle,
  });
}
