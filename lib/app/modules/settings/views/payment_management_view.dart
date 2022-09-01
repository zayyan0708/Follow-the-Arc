// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/card_detail.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/modules/settings/controllers/settings_controller.dart';
import 'package:thearc/app/routes/app_pages.dart';

class PaymentManagementView extends GetView<SettingsController> {
  const PaymentManagementView({Key? key}) : super(key: key);
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
          'Payment Management',
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
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.ADD_CARD);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 14,
                        right: 14,
                      ),
                      height: screen_height - (screen_height - 60),
                      decoration: BoxDecoration(
                          color: kwhite,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: koutline)),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.credit_card,
                                color: kbackground,
                                size: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: AutoSizeText(
                                  '+ Add New Card',
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
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: kgreyish,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 30),
                  ),
                  Divider(
                    color: koutline,
                    height: 2,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 20),
                  ),
                  AutoSizeText(
                    'Select payment method to proceed',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 15),
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.seletedMethod.value = 'credit';
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color:
                                    controller.seletedMethod.value == 'credit'
                                        ? kbackground
                                        : kwhite,
                                border: Border.all(
                                    color: controller.seletedMethod.value ==
                                            'credit'
                                        ? kforeground
                                        : koutline),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: screen_height - (screen_height - 60),
                              width: screen_width - (screen_width - 80),
                              child: Image.asset(kCreditLogo)),
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                color:
                                    controller.seletedMethod.value == 'paypal'
                                        ? kbackground
                                        : kwhite,
                                border: Border.all(
                                    color: controller.seletedMethod.value ==
                                            'paypal'
                                        ? kforeground
                                        : koutline),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: screen_height - (screen_height - 60),
                              width: screen_width - (screen_width - 80),
                              child: Image.asset(kPaypalLogo)),
                          onTap: () {
                            controller.seletedMethod.value = 'paypal';
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 8),
                              decoration: BoxDecoration(
                                color:
                                    controller.seletedMethod.value == 'applepay'
                                        ? kbackground
                                        : kwhite,
                                border: Border.all(
                                    color: controller.seletedMethod.value ==
                                            'applepay'
                                        ? kforeground
                                        : koutline),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: screen_height - (screen_height - 60),
                              width: screen_width - (screen_width - 80),
                              child: Image.asset(
                                  controller.seletedMethod.value == 'applepay'
                                      ? kApplepaylWhite
                                      : kApplepaylBlack)),
                          onTap: () {
                            controller.seletedMethod.value = 'applepay';
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                color: controller.seletedMethod.value ==
                                        'googlepay'
                                    ? kbackground
                                    : kwhite,
                                border: Border.all(
                                    color: controller.seletedMethod.value ==
                                            'googlepay'
                                        ? kforeground
                                        : koutline),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: screen_height - (screen_height - 60),
                              width: screen_width - (screen_width - 80),
                              child: Image.asset(kGooglePayLogo)),
                          onTap: () {
                            controller.seletedMethod.value = 'googlepay';
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 15),
                  ),
                  AutoSizeText(
                    'Available Debit/Credit Cards:',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: screen_width,
                    height: screen_height - (screen_height - 300),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: card_list.length,
                        itemBuilder: (context, index) {
                          return Obx(
                            () => GestureDetector(
                              onTap: () {
                                controller.seletedCard.value = index;
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10, bottom: 10),
                                padding: EdgeInsets.all(15),
                                width: screen_width - (screen_width - 287),
                                height: screen_height - (screen_height - 120),
                                decoration: BoxDecoration(
                                  color: controller.seletedCard.value == index
                                      ? kbackground
                                      : kwhite,
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: controller.seletedCard.value == index
                                        ? kforeground
                                        : koutline,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          card_list[index].cardHolder,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                controller.seletedCard.value ==
                                                        index
                                                    ? kforeground
                                                    : kbackground,
                                          ),
                                        ),
                                        AutoSizeText(
                                          card_list[index]
                                              .cardNumber
                                              .toString(),
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                controller.seletedCard.value ==
                                                        index
                                                    ? kwhite
                                                    : kgreyish,
                                          ),
                                        ),
                                        AutoSizeText(
                                          card_list[index].expiry,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                controller.seletedCard.value ==
                                                        index
                                                    ? kwhite
                                                    : kgreyish,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        child: Icon(
                                          Icons.close,
                                          color: kwhite,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  RoundedButton(
                      screen_width: screen_width,
                      screen_height: screen_height,
                      title: 'Pay Now',
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
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
