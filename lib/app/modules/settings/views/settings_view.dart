// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/components/bottom_naviagtion.dart';
import 'package:thearc/app/components/custom_bottomsheet.dart';
import 'package:thearc/app/components/setting_option.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: klightBG,
        bottomNavigationBar: Container(
          color: kwhite,
          child: BottomNavigation(
            isHome: false,
            isTip: false,
            isSetting: true,
          ),
        ),
        appBar: AppBar(
          leading: Row(),
          backgroundColor: klightBG,
          elevation: 0,
          foregroundColor: kbackground,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                MdiIcons.bellBadgeOutline,
                size: 25,
              ),
            ),
          ],
          title: AutoSizeText(
            'Settings',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kbackground,
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(
                      left: 14,
                      right: 14,
                    ),
                    height: screen_height - (screen_height - 60),
                    width: screen_width,
                    decoration: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: koutline)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              MdiIcons.bell,
                              color: kbackground,
                              size: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.04,
                              ),
                              child: Text(
                                'Push Notifications',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: kbackground,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: controller.notiswitch.value,
                            onChanged: (value) {
                              controller.notiswitch.value = value;
                            },
                            thumbColor: kwhite,
                            activeColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'Change Password',
                      icon: MdiIcons.lock,
                      onPressed: () {
                        Get.toNamed(Routes.CHANGE_PASSWORD);
                      }),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'Payments Management',
                      icon: Icons.payment,
                      onPressed: () {
                        Get.toNamed(Routes.PAYMENT_MANAGEMENT);
                      }),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'Subscription',
                      icon: Icons.subtitles,
                      onPressed: () {
                        Get.toNamed(Routes.SUBSCRIPTION);
                      }),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'Delete Account',
                      icon: MdiIcons.accountRemove,
                      onPressed: () {
                        CustomizeBottomSheet(
                            context,
                            'Delete Alert',
                            'Are you sure, that you want to delete\nthis account?',
                            'Delete');
                      }),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'Terms & Conditions',
                      icon: Iconsax.note5,
                      onPressed: () {
                        Get.toNamed(Routes.TERMSCONDITION);
                      }),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'FAQs',
                      icon: Iconsax.information4,
                      onPressed: () {
                        Get.toNamed(Routes.FAQS);
                      }),
                  Setting_options(
                      screen_height: screen_height,
                      screen_width: screen_width,
                      title: 'Log Out',
                      icon: Icons.logout,
                      onPressed: () {
                        CustomizeBottomSheet(context, 'Log Out',
                            'Are you sure you want to logout', 'Log Out');
                      }),
                ],
              ),
            )),
      ),
    );
  }
}
