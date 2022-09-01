// ignore_for_file: deprecated_member_use, prefer_const_constructors, non_constant_identifier_names, unnecessary_overrides

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:thearc/app/routes/app_pages.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  late Tween<double> tweenSize;
  late Animation<double> animationSize;
  late AnimationController animationController;
  var isLogo = false.obs;
  @override
  void onInit() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    tweenSize = Tween(begin: 5, end: 170);
    animationSize = tweenSize.animate(animationController);
    animationController.forward();
    super.onInit();
  }

  ShowLogo() async {
    await Future.delayed(Duration(seconds: 3));
    isLogo.value = true;
    NavigateToOnboarding();
  }

  NavigateToOnboarding() async {
    await Future.delayed(Duration(seconds: 3));
    Get.toNamed(Routes.ONBOARDING);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
