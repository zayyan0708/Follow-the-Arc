// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class BottomNavigation extends StatelessWidget {
  late var isHome;
  late var isTip;
  late var isSetting;
  BottomNavigation(
      {required this.isHome, required this.isTip, required this.isSetting});

  @override
  Widget build(BuildContext context) {
    var homeColor = isHome ? kbackground : kgreyish;
    var TipColor = isTip ? kbackground : kgreyish;
    var settingColor = isSetting ? kbackground : kgreyish;
    return Container(
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height - 65),
      decoration: BoxDecoration(
        border: Border.all(color: koutline),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(23),
          topRight: Radius.circular(23),
        ),
        color: kwhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.TIPS);
              },
              child: Column(
                children: [
                  Icon(
                    MdiIcons.lightbulbOn,
                    color: TipColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AutoSizeText('Tips',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: TipColor,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.HOME);
              },
              child: Column(
                children: [
                  Icon(
                    Iconsax.home_15,
                    color: homeColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AutoSizeText('Home',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: homeColor,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SETTINGS);
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Iconsax.setting5,
                      color: settingColor,
                      size: 28,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AutoSizeText('Settings',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: settingColor,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
