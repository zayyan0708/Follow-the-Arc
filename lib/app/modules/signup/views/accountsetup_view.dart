// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, deprecated_member_use, unused_import

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinput/pinput.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/image_bottomsheet.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/signup/controllers/signup_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class AccountsetupView extends GetView<SignupController> {
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
            Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 150),
                width: screen_width,
                height: screen_height * 0.8,
                decoration: BoxDecoration(
                  color: kbackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Account Setup',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kforeground,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.02,
                      ),
                      AutoSizeText(
                        'Set-up your profile by filling\ninformation below',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kwhite,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.02,
                      ),
                      Center(
                        child: Obx(
                          () => Stack(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: kwhite,
                                backgroundImage: controller
                                        .isSelectedImage.value
                                    ? FileImage(File(
                                            controller.selectedImagePath.value))
                                        as ImageProvider
                                    : AssetImage(
                                        kprofileAvatar,
                                      ),
                              ),
                              Positioned(
                                bottom: 0.0,
                                right: 1.0,
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) =>
                                            bottomSheet(context, controller));
                                  },
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: kbackground,
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: klightBG,
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: kbackground,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.02,
                      ),
                      Form(
                        key: controller.formKey1,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          children: [
                            CustomTextField(
                                textColor: kwhite,
                                focusNode: controller.focusNodes[0],
                                label: 'Date of Birth *',
                                fieldIcon: Icons.calendar_month),
                            SizedBox(
                              height: screen_height * 0.02,
                            ),
                            CustomTextField(
                                textColor: kwhite,
                                focusNode: controller.focusNodes[1],
                                label: 'Weight (kg)',
                                isNum: true,
                                fieldIcon: Icons.monitor_weight),
                            SizedBox(
                              height: screen_height * 0.02,
                            ),
                            CustomTextField(
                                textColor: kwhite,
                                focusNode: controller.focusNodes[2],
                                label: 'Height (cm)',
                                isNum: true,
                                fieldIcon: Icons.height),
                            SizedBox(
                              height: screen_height * 0.02,
                            ),
                            CustomTextField(
                                textColor: kwhite,
                                isNum: true,
                                focusNode: controller.focusNodes[3],
                                label: 'Ethnicity',
                                fieldIcon: Icons.wordpress_outlined),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.02,
                      ),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Continue',
                          onPressed: () {
                            Get.toNamed(Routes.MOREINFO);
                          })
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  // Widget bottomSheet(BuildContext context, var controller) {
  //   return Container(
  //     height: 100,
  //     width: MediaQuery.of(context).size.width,
  //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  //     child: Column(children: <Widget>[
  //       Text(
  //         "Chooose Profile Photo",
  //         style: TextStyle(fontSize: 20.0),
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           FlatButton.icon(
  //             onPressed: () {
  //               controller.getImage(ImageSource.camera);
  //             },
  //             icon: Icon(Icons.camera),
  //             label: Text('Camera'),
  //           ),
  //           FlatButton.icon(
  //             onPressed: () {
  //               controller.getImage(ImageSource.gallery);
  //             },
  //             icon: Icon(Icons.image),
  //             label: Text('Gallery'),
  //           ),
  //         ],
  //       )
  //     ]),
  //   );
  // }
}
