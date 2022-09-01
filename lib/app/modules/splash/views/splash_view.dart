// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        constraints: BoxConstraints(
          maxHeight: screen_height,
          maxWidth: screen_width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: screen_width,
              height: screen_height * 0.6,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.transparent],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height * 1.1));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      kSplashBG,
                      //height: screen_height / 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedBuilder(
                animation: controller.animationSize,
                builder: (context, child) {
                  controller.ShowLogo();
                  return SizedBox(
                    height: controller.animationSize.value,
                    width: controller.animationSize.value,
                    child: Image.asset(
                      kSplashlogo,
                      fit: BoxFit.fill,
                    ),
                  );
                }),
            Obx(
              () => controller.isLogo.value
                  ? Image.asset(
                      kSplashlogo2,
                      fit: BoxFit.fill,
                    )
                  : Container(),
            ),
            SizedBox(
              height: screen_height * 0.04,
            ),
          ],
        ),
      )),
    );
  }
}
