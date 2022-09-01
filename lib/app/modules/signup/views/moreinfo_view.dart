// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, use_key_in_widget_constructors, must_be_immutable, import_of_legacy_library_into_null_safe, unused_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/signup/controllers/signup_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class MoreinfoView extends GetView<SignupController> {
  late String _myActivity = '';
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
                        'More Information',
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
                        'Set-up your profile by filling more\ninformation below',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kwhite,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.05,
                      ),
                      InfoTextField(
                          screenheight: screen_height,
                          screenwidth: screen_width,
                          question: 'Q1. Do you smoke?\n',
                          index: 0),
                      InfoTextField(
                        screenheight: screen_height,
                        screenwidth: screen_width,
                        index: 1,
                        question: 'Q2. Do you have diabetes?\n',
                      ),
                      InfoTextField(
                          screenheight: screen_height,
                          screenwidth: screen_width,
                          question: 'Q3. Do you have hypertension?\n',
                          index: 2),
                      InfoTextField(
                          screenheight: screen_height,
                          screenwidth: screen_width,
                          question:
                              'Q4. Do you take blood pressure medication?\n',
                          index: 3),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Continue',
                          onPressed: () {
                            Get.toNamed(Routes.OTPVERIFY);
                          }),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  Column InfoTextField(
      {required double screenheight,
      required double screenwidth,
      required String question,
      required int index}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          question,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: kwhite,
          ),
        ),
        Column(
          children: [
            Container(
                //height: 45,
                width: double.infinity,
                padding: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffbbbbbb),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                constraints: BoxConstraints(
                  minHeight: 45,
                  minWidth: double.infinity,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: controller.isStrechedDropDown[index].value
                              ? Obx(
                                  () => Text(
                                    controller.isStrechedDropDown[index].value
                                        ? 'Your Answer'
                                        : controller.qans1.value,
                                    style: TextStyle(
                                      color: controller
                                              .isStrechedDropDown[index].value
                                          ? kgreyish
                                          : kforeground,
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              : Obx(
                                  () => Text(
                                    controller.isStrechedDropDown[index].value
                                        ? 'Your Answer'
                                        : controller.qans1.value,
                                    style: TextStyle(
                                      color: controller
                                              .isStrechedDropDown[index].value
                                          ? kgreyish
                                          : kforeground,
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.isStrechedDropDown[index].value =
                            !controller.isStrechedDropDown[index].value;
                      },
                      child: Obx(
                        () => Icon(
                          controller.isStrechedDropDown[index].value
                              ? Icons.keyboard_arrow_left_outlined
                              : Icons.keyboard_arrow_down_outlined,
                          color: koutline,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                )),
            Obx(
              () => controller.isStrechedDropDown[index].value
                  ? Container(
                      margin: EdgeInsets.only(
                          left: screenwidth * 0.035,
                          right: screenwidth * 0.035),
                      padding: EdgeInsets.only(
                        bottom: 5,
                      ),
                      constraints: BoxConstraints(
                          //minHeight: 100,
                          minWidth: 200,
                          maxHeight: screenheight * 0.15),
                      color: kgreyish,
                      child: ListView(children: [
                        ListTile(
                          title: GestureDetector(
                            onTap: () {
                              controller.qans1.value = 'Yes';
                              controller.isStrechedDropDown[index].value =
                                  !controller.isStrechedDropDown[index].value;
                            },
                            child: Text(
                              'yes',
                              style: TextStyle(
                                color: kforeground,
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: GestureDetector(
                            onTap: () {
                              controller.qans1.value = 'No';
                              controller.isStrechedDropDown[index].value =
                                  !controller.isStrechedDropDown[index].value;
                            },
                            child: Text(
                              'No',
                              style: TextStyle(
                                color: kforeground,
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    )
                  : Text(''),
            )
          ],
        ),
        // SizedBox(
        //   height: screenheight * 0.06,
        //   child: TextFormField(
        //     focusNode: controller.focusNodes[0],
        //     cursorColor: kforeground,
        //     style: TextStyle(color: kwhite),
        //     keyboardType: TextInputType.name,
        //     onChanged: (value) {},
        //     decoration: InputDecoration(
        //       hintText: 'Your Answer',
        //       hintStyle: TextStyle(
        //         fontFamily: 'Inter',
        //         fontSize: 13,
        //         fontWeight: FontWeight.w400,
        //         color: controller.focusNodes[0].hasFocus
        //             ? kforeground
        //             : Color(0xFF999999),
        //       ),
        //       suffixIcon: Icon(
        //         Icons.keyboard_arrow_down_outlined,
        //         color: controller.focusNodes[0].hasFocus
        //             ? kforeground
        //             : Color(0xFF999999),
        //       ),
        //       focusColor: kforeground,
        //       enabledBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(50),
        //         borderSide: BorderSide(
        //           color: koutline,
        //         ),
        //       ),
        //       focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(50),
        //         borderSide: BorderSide(
        //           color: kforeground,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
