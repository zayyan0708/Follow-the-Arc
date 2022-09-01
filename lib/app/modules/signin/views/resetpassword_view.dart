// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/signin/controllers/signin_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class ResetpasswordView extends GetView<SigninController> {
  const ResetpasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(kBackground),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(Routes.SIGNUP);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: screen_width * 0.03, top: screen_height * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: koutline,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 150),
                  width: screen_width,
                  height: screen_height,
                  decoration: BoxDecoration(
                    color: kbackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Reset Password',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kforeground,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.01,
                      ),
                      AutoSizeText(
                        'Enter your new password below, make sure\nyour new password will be different\nfrom old one',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kwhite,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.04,
                      ),
                      Obx(
                        () => PasswordField(
                            labelText: 'Password *',
                            textColor: kwhite,
                            controller: controller.checkpass2.value,
                            focus_Node: controller.focusNodes[0],
                            suffixIcon: controller.checkpass1.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            suffixFunc: () {
                              controller.checkpass1.value =
                                  !controller.checkpass1.value;
                            }),
                      ),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Obx(
                        () => PasswordField(
                            labelText: 'Confirm Password *',
                            textColor: kwhite,
                            isObscure: controller.checkpass2.value,
                            controller: controller.checkpass2.value,
                            focus_Node: controller.focusNodes[1],
                            suffixIcon: controller.checkpass2.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            suffixFunc: () {
                              controller.checkpass2.value =
                                  !controller.checkpass2.value;
                            }),
                      ),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Reset',
                          onPressed: () {
                            Get.offAllNamed(Routes.SIGNIN);
                          })
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
