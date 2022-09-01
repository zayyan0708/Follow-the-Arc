// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class OtpverifyView extends GetView {
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
                        'OTP Verification',
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
                        'Enter the 4 digit code you \nreceived on email',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kwhite,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 43),
                        child: SizedBox(
                          width: screen_width,
                          child: Pinput(
                            preFilledWidget: Text(
                              '-',
                              style: TextStyle(
                                  color: kgreyish,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            length: 4,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            defaultPinTheme: PinTheme(
                              height: 60.0,
                              width: 60.0,
                              textStyle: TextStyle(
                                fontSize: 24.0,
                                color: kforeground,
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kbackground,
                                border: Border.all(
                                  color: koutline.withOpacity(0.5),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                              height: 60.0,
                              width: 60.0,
                              textStyle: TextStyle(
                                fontSize: 24.0,
                                color: kforeground,
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kbackground,
                                border: Border.all(
                                  color: kforeground,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Verify Now',
                          onPressed: () {
                            Get.toNamed(Routes.MEMBERSHIP);
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
