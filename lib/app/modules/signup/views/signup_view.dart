// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, dead_code, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
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
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 150),
                width: screen_width,
                decoration: BoxDecoration(
                  color: kbackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AutoSizeText(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kforeground,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.05,
                      ),
                      CustomTextField(
                          label: 'Full Name *',
                          textColor: kwhite,
                          isName: true,
                          focusNode: controller.focusNodes[0],
                          fieldIcon: Icons.person),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      CustomTextField(
                          label: 'Email *',
                          isEmail: true,
                          textColor: kwhite,
                          focusNode: controller.focusNodes[1],
                          fieldIcon: Icons.email),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Obx(
                        () => PasswordField(
                            labelText: 'Password *',
                            textColor: kwhite,
                            isObscure: controller.checkpass1.value,
                            controller: controller.checkpass1.value,
                            focus_Node: controller.focusNodes[2],
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
                            focus_Node: controller.focusNodes[3],
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
                          title: 'Sign Up',
                          onPressed: () {
                            Get.toNamed(Routes.ACCOUNTSETUP);
                          }),
                      SizedBox(
                        height: screen_height * 0.03,
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
                              controller.focusReset();
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
