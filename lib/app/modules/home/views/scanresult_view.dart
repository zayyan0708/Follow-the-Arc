// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/facial_card.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class ScanresultView extends GetView {
  const ScanresultView({Key? key}) : super(key: key);
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
        leading: Text(''),
        title: AutoSizeText(
          'Facial Scan Result',
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
                  FacialCard(
                    screen_width: screen_width,
                    screen_height: screen_height,
                    heart_rate: 63,
                    blood_pressure: 50,
                    breathing_rate: 5,
                    heart_rate_variability: 45,
                    heart_beats: 120,
                    cardiac_workload: 63,
                    datetime: '',
                    ischeck: false,
                  ),
                  SizedBox(
                    height: screen_height * 0.03,
                  ),
                  RoundedButton(
                      screen_width: screen_width,
                      screen_height: screen_height,
                      title: 'Back to Home',
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
