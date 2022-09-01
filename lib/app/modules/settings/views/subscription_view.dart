// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class SubscriptionView extends GetView {
  const SubscriptionView({Key? key}) : super(key: key);
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
          'Subscription',
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
                    'Get access to discrete features by monthly\nsubscription on The Arc',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 40),
                    width: screen_width,
                    height: screen_height - (screen_height - 150),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          var _value = 0;
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(15),
                            width: screen_width - (screen_width - 287),
                            height: screen_height - (screen_height - 150),
                            decoration: BoxDecoration(
                              color: klightBG,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: koutline,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    AutoSizeText(
                                      'Basic ',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: kbackground,
                                      ),
                                    ),
                                    AutoSizeText(
                                      '(Free)',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: kbackground,
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          screen_width - (screen_width - 100),
                                    ),
                                    Radio(
                                        value: 1,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          _value = 2;
                                        }),
                                  ],
                                ),
                                AutoSizeText(
                                  '7 days free',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kgreyish,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  RoundedButton(
                      screen_width: screen_width,
                      screen_height: screen_height,
                      title: 'Subscribe',
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
