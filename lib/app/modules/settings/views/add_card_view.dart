// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/components/custom_textfield.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/settings/controllers/settings_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class AddCardView extends GetView<SettingsController> {
  const AddCardView({Key? key}) : super(key: key);
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
                Get.offAllNamed(Routes.PAYMENT_MANAGEMENT);
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
                decoration: BoxDecoration(
                  color: kbackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AutoSizeText(
                        'Add New Card',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kwhite,
                        ),
                      ),
                      SizedBox(
                        height: screen_height * 0.05,
                      ),
                      CustomTextField(
                          label: 'Card Holder Name *',
                          textColor: kwhite,
                          focusNode: controller.focusNodes[0],
                          fieldIcon: Iconsax.activity2),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      CustomTextField(
                          label: 'Card NUmber *',
                          textColor: kwhite,
                          focusNode: controller.focusNodes[1],
                          fieldIcon: Iconsax.activity2),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      CustomTextField(
                          label: 'CVV *',
                          textColor: kwhite,
                          focusNode: controller.focusNodes[1],
                          fieldIcon: Iconsax.activity2),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      CustomTextField(
                          label: 'Expiry Date *',
                          textColor: kwhite,
                          focusNode: controller.focusNodes[1],
                          fieldIcon: Iconsax.activity2),
                      SizedBox(
                        height: screen_height * 0.03,
                      ),
                      RoundedButton(
                          screen_width: screen_width,
                          screen_height: screen_height,
                          title: 'Add Card',
                          onPressed: () {
                            Navigator.pop(context);
                          }),
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
