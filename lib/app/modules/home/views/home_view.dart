// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, unused_import

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/components/bottom_naviagtion.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
            Image.asset(
              kBackground,
              fit: BoxFit.fill,
              width: screen_width,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "The ARC",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: kwhite,
                          ),
                        ),
                        Icon(
                          MdiIcons.bellBadge,
                          size: 25,
                          color: kwhite,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.only(
                      left: screen_width - (screen_width - 15),
                      right: screen_width - (screen_width - 15)),
                  color: Colors.transparent,
                  width: screen_width,
                  height: screen_height - (screen_height - 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        backgroundImage: controller.isSelectedImage.value
                            ? FileImage(
                                    File(controller.selectedImagePath.value))
                                as ImageProvider
                            : AssetImage(
                                kProfileimage,
                              ),
                      ),
                      SizedBox(
                        width: screen_width - (screen_width - 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: screen_height - (screen_height - 5),
                            top: screen_height - (screen_height - 15)),
                        child: Column(
                          children: [
                            AutoSizeText(
                              "annie smith",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kforeground,
                              ),
                            ),
                            SizedBox(
                              height: screen_height - (screen_height - 5),
                            ),
                            AutoSizeText(
                              "4th June, 1992",
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
                      SizedBox(
                        width: screen_width - (screen_width - 100),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.EDIT_PROFILE);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: screen_height - (screen_height - 5),
                              top: screen_height - (screen_height - 17)),
                          child: Container(
                            width: screen_width - (screen_width - 35),
                            height: screen_height - (screen_height - 35),
                            decoration: BoxDecoration(
                                color: kwhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.edit,
                              color: kbackground,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screen_width - (screen_width - 15),
                      right: screen_width - (screen_width - 15)),
                  child: Divider(
                    height: 2,
                    color: koutline,
                    thickness: 1,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            AutoSizeText(
                              "Ethnicity",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite,
                              ),
                            ),
                            SizedBox(
                              height: screen_height - (screen_height - 5),
                            ),
                            AutoSizeText(
                              "American",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kforeground,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 50,
                        color: koutline,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            AutoSizeText(
                              "Weight",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite,
                              ),
                            ),
                            SizedBox(
                              height: screen_height - (screen_height - 5),
                            ),
                            AutoSizeText(
                              "50 kg",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kforeground,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 50,
                        color: koutline,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            AutoSizeText(
                              "Height",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite,
                              ),
                            ),
                            SizedBox(
                              height: screen_height - (screen_height - 5),
                            ),
                            AutoSizeText(
                              "165 cm",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kforeground,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 50,
                        color: koutline,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            AutoSizeText(
                              "BMI",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kwhite,
                              ),
                            ),
                            SizedBox(
                              height: screen_height - (screen_height - 5),
                            ),
                            AutoSizeText(
                              "25",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kforeground,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 20),
                  width: screen_width,
                  height: screen_height * 0.55,
                  decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.MONTHLY_REPORT);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(15),
                              width: screen_width - (screen_width - 165),
                              height: screen_height - (screen_height - 150),
                              decoration: BoxDecoration(
                                color: kbackground,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: koutline,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        screen_height - (screen_height - 45),
                                    width: screen_width - (screen_width - 45),
                                    decoration: BoxDecoration(
                                        color: kforeground,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset(kmonthReportImage),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    'Monthly Report',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kwhite,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.CURRENTANALYSIS);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(15),
                              width: screen_width - (screen_width - 165),
                              height: screen_height - (screen_height - 150),
                              decoration: BoxDecoration(
                                color: kbackground,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: koutline,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        screen_height - (screen_height - 45),
                                    width: screen_width - (screen_width - 45),
                                    decoration: BoxDecoration(
                                        color: kforeground,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset(kCurrentAnalysisImage),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    'Current Analysis',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kwhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.REPORT_HISTORY);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(15),
                              width: screen_width - (screen_width - 165),
                              height: screen_height - (screen_height - 150),
                              decoration: BoxDecoration(
                                color: kbackground,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: koutline,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        screen_height - (screen_height - 45),
                                    width: screen_width - (screen_width - 45),
                                    decoration: BoxDecoration(
                                        color: kforeground,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset(kReportHistoryImage),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    'Report History',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kwhite,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.MEALS_PLAN);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(15),
                              width: screen_width - (screen_width - 165),
                              height: screen_height - (screen_height - 150),
                              decoration: BoxDecoration(
                                color: kbackground,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: koutline,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        screen_height - (screen_height - 45),
                                    width: screen_width - (screen_width - 45),
                                    decoration: BoxDecoration(
                                        color: kforeground,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset(kMealsLogo),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    'Meals Plans',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kwhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                        ),
                        child: Material(
                          elevation: 5.0,
                          color: kforeground,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: (() {
                              Get.toNamed(Routes.FACIALSCAN);
                            }),
                            minWidth: screen_width,
                            height: screen_height * 0.050,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/scan.png'),
                                AutoSizeText(
                                  '  Start Scan',
                                  style: TextStyle(
                                      color: kbackground,
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: kwhite,
                    child: BottomNavigation(
                      isHome: true,
                      isTip: false,
                      isSetting: false,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
