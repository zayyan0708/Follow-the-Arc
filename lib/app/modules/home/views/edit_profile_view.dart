// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_cast

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/image_bottomsheet.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/home/controllers/home_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class EditProfileView extends GetView<HomeController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kbackground,
      // bottomNavigationBar: BottomNavigation(
      //   isHome: true,
      //   isTip: false,
      //   isSetting: false,
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: screen_width,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.transparent],
                  ).createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height * 1.1));
                },
                blendMode: BlendMode.dstIn,
                child: Obx(
                  () => controller.isSelectedImage.value
                      ? Image.file(File(controller.selectedImagePath.value))
                      : Image.asset(
                          'assets/images/ProfileBG.png',
                          fit: BoxFit.fill,
                        ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(12),
                width: screen_width - (screen_width - 35),
                height: screen_height - (screen_height - 35),
                decoration: BoxDecoration(
                  color: kforeground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: kbackground,
                  size: 20,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: screen_height - (screen_height - 200)),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => bottomSheet(context, controller));
                  FileImage(File(controller.selectedImagePath.value))
                      as ImageProvider;
                },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: kwhite,
                        size: 25,
                      ),
                      AutoSizeText(
                        'Upload/capture profile picture',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kwhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: screen_height * 0.33),
              width: screen_width,
              height: double.infinity,
              decoration: BoxDecoration(
                color: kbackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Edit Profile',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kwhite,
                        ),
                      ),
                      SizedBox(
                        height: screen_height - (screen_height - 25),
                      ),
                      CustomTextField(
                          textColor: kwhite,
                          focusNode: controller.focusNodes[0],
                          label: 'Full Name *',
                          fieldIcon: Icons.calendar_month),
                      SizedBox(
                        height: screen_height - (screen_height - 15),
                      ),
                      CustomTextField(
                          textColor: kwhite,
                          focusNode: controller.focusNodes[0],
                          label: 'Date of Birth *',
                          fieldIcon: Icons.calendar_month),
                      SizedBox(
                        height: screen_height - (screen_height - 15),
                      ),
                      CustomTextField(
                          textColor: kwhite,
                          focusNode: controller.focusNodes[1],
                          label: 'Weight (kg)',
                          isNum: true,
                          fieldIcon: Icons.monitor_weight),
                      SizedBox(
                        height: screen_height - (screen_height - 15),
                      ),
                      CustomTextField(
                          textColor: kwhite,
                          focusNode: controller.focusNodes[2],
                          label: 'Height (cm)',
                          fieldIcon: Icons.height),
                      SizedBox(
                        height: screen_height - (screen_height - 15),
                      ),
                      CustomTextField(
                          textColor: kwhite,
                          focusNode: controller.focusNodes[3],
                          label: 'Ethnicity',
                          fieldIcon: Icons.wordpress_outlined),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Update Profile',
                          onPressed: () {
                            Get.toNamed(Routes.HOME);
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
