// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class GetStartedView extends GetView {
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
              height: screen_height * 0.65,
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        kSplashlogo,
                        fit: BoxFit.cover,
                      ),
                    ],
                  )
                ],
              ),
            ),
            AutoSizeText(
              'The ARC',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: kwhite,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: RoundedButton(
                  screen_width: screen_width,
                  screen_height: screen_height,
                  title: 'Get Started',
                  onPressed: () {
                    Get.toNamed(Routes.SIGNUP);
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  'Already have an account? ',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kwhite,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.SIGNIN);
                  },
                  child: AutoSizeText(
                    'Sign In',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kforeground,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screen_height * 0.02,
            ),
          ],
        ),
      )),
    );
  }
}
