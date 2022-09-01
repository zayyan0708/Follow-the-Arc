// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
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
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 150),
                width: screen_width,
                decoration: BoxDecoration(
                  color: kbackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Form(
                  key: controller.formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AutoSizeText(
                        'Sign In',
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
                          label: 'Email *',
                          textColor: kwhite,
                          isEmail: true,
                          focusNode: controller.focusNodes[0],
                          fieldIcon: Icons.email),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Obx(
                        () => PasswordField(
                            labelText: 'Password *',
                            textColor: kwhite,
                            isObscure: controller.checkpass1.value,
                            controller: controller.checkpass2.value,
                            focus_Node: controller.focusNodes[1],
                            suffixIcon: controller.checkpass1.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            suffixFunc: () {
                              controller.checkpass1.value =
                                  !controller.checkpass1.value;
                            }),
                      ),
                      SizedBox(
                        height: screen_height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: AutoSizeText(
                              'Forgot Password?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kwhite,
                                fontFamily: 'Inter',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {
                              Get.toNamed(Routes.FORGOTPASSWORD);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Sign In',
                          onPressed: () {
                            Get.offAllNamed(Routes.HOME);
                          }),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'or Sign in with',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: kwhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment,
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: kwhite,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: screen_height * 0.044,
                              width: screen_width * 0.25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.apple,
                                    color: kbackground,
                                  ),
                                  AutoSizeText(
                                    'Sign In',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 10,
                                      color: kbackground,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              //print('sign in clicked');
                            },
                          ),
                          SizedBox(
                            width: screen_width * 0.010,
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF4776B9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: screen_height * 0.044,
                              width: screen_width * 0.25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(kFacebookLogo),
                                  AutoSizeText(
                                    '  Sign In',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 10,
                                      color: kwhite,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              //print('sign in clicked');
                            },
                          ),
                          SizedBox(
                            width: screen_width * 0.010,
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFDC3C2A),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: screen_height * 0.044,
                              width: screen_width * 0.25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(kGmailLogo),
                                  AutoSizeText(
                                    '  Sign In',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 10,
                                      color: kwhite,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              //print('sign in clicked');
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'Don\'t have an account? ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kwhite,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.SIGNUP);
                            },
                            child: AutoSizeText(
                              'Sign Up',
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
