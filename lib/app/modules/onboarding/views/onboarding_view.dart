// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, unused_element, unrelated_type_equality_checks, use_key_in_widget_constructors, non_constant_identifier_names, unused_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: controller.selectedPageIndex,
              controller: controller.pageController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screen_height * 0.4,
                        width: screen_width,
                        padding: EdgeInsets.symmetric(
                            horizontal: screen_width * 0.1),
                        // color: Colors.red,
                        child: Stack(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-2.png'),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-3.png'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-1.png'),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-4.png'),
                                      ),
                                    ],
                                  ),
                                ]),
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/face.png'),
                              ),
                            ),
                            Center(
                              child: Lottie.asset('assets/jsons/scanner.json'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screen_height * 0.165),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AutoSizeText(
                            'Face Scan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: kforeground),
                          ),
                          SizedBox(height: screen_height * 0.01),
                          AutoSizeText(
                            'Think of them merely as actors on a paper stage, in a performance devoid of content yet rich in form. That being the case, there is really no point in your continuing to read them.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screen_height * 0.4,
                        width: screen_width,
                        padding: EdgeInsets.symmetric(
                            horizontal: screen_width * 0.1),
                        // color: Colors.red,
                        child: Stack(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-2.png'),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-3.png'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-1.png'),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Group-4.png'),
                                      ),
                                    ],
                                  ),
                                ]),
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/Body.png'),
                              ),
                            ),
                            Center(
                              child: Lottie.asset('assets/jsons/scanner.json'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screen_height * 0.165),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AutoSizeText(
                            'Body Scan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: kforeground),
                          ),
                          SizedBox(height: screen_height * 0.01),
                          AutoSizeText(
                            'Think of them merely as actors on a paper stage, in a performance devoid of content yet rich in form. That being the case, there is really no point in your continuing to read them.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset('assets/images/Meal.png'),
                      ),
                      SizedBox(height: screen_height * 0.165),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AutoSizeText(
                            'Meals',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: kforeground),
                          ),
                          SizedBox(height: screen_height * 0.01),
                          AutoSizeText(
                            'Think of them merely as actors on a paper stage, in a performance devoid of content yet rich in form. That being the case, there is really no point in your continuing to read them.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              //left: screen_width * 0.4,
              child: Container(
                padding: EdgeInsets.all(20),
                width: screen_width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.GETSTARTED);
                      },
                      child: AutoSizeText(
                        'Skip',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: koutline,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          3,
                          (index) => Obx(
                                () => controller.selectedPageIndex == index
                                    ? Container(
                                        margin: EdgeInsets.all(4),
                                        width: 30,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: kforeground,
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )
                                    : Container(
                                        margin: EdgeInsets.all(4),
                                        width: 5,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: kwhite,
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                              )),
                    ),
                    FloatingActionButton(
                      backgroundColor: kforeground,
                      foregroundColor: kbackground,
                      onPressed: () {
                        controller.forwardAction();
                        if (controller.selectedPageIndex.value < 2) {
                          controller.selectedPageIndex.value++;
                        } else if (controller.selectedPageIndex.value == 2) {
                          Get.offAllNamed(Routes.GETSTARTED);
                        }
                      },
                      child: Icon(Icons.arrow_forward_ios_outlined),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
