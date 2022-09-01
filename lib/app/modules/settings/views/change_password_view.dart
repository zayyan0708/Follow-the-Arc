// ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/settings/controllers/settings_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class ChangePasswordView extends GetView<SettingsController> {
  const ChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: klightBG,
      appBar: AppBar(
        backgroundColor: klightBG,
        elevation: 0,
        foregroundColor: kbackground,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 25,
          ),
        ),
        title: AutoSizeText(
          'Change Password',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: kbackground,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 30),
              width: screen_width,
              height: screen_height,
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Your new password must be different\nfrom previous passwords',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 30),
                  ),
                  CustomTextField(
                      focusNode: controller.focusNodes[0],
                      textColor: kbackground,
                      label: 'Email *',
                      fieldIcon: Icons.email),
                  SizedBox(
                    height: screen_height - (screen_height - 20),
                  ),
                  PasswordField(
                    focus_Node: controller.focusNodes[1],
                    textColor: kbackground,
                    controller: controller.checkpass1.value,
                    labelText: 'New Password *',
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 20),
                  ),
                  PasswordField(
                    focus_Node: controller.focusNodes[2],
                    textColor: kbackground,
                    controller: controller.checkpass2.value,
                    labelText: 'Confirm Password *',
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 40),
                  ),
                  RoundedButton(
                      screen_width: screen_width,
                      screen_height: screen_height,
                      title: 'Update Password',
                      onPressed: () {
                        Get.toNamed(Routes.PAYMENT);
                      }),
                  SizedBox(
                    height: screen_height * 0.03,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
