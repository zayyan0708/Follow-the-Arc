// ignore_for_file: unused_import, unnecessary_overrides

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/onboarding/models/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  forwardAction() {
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        imageAsset: 'assets/images/Meal.png',
        title: 'Meals',
        description: 'aaaaaaaaaaaaaaa'),
    OnboardingInfo(
        imageAsset: 'assets/images/Meal.png',
        title: 'Meals',
        description: 'aaaaaaaaaaaaaaa'),
    OnboardingInfo(
        imageAsset: 'assets/images/Meal.png',
        title: 'Meals',
        description: 'aaaaaaaaaaaaaaa'),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
