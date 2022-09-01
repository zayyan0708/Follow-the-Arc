// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations, dead_code, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unused_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/body_card.dart';
import 'package:thearc/app/components/facial_card.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/currentanalysis_controller.dart';

class CurrentanalysisView extends GetView<CurrentanalysisController> {
  const CurrentanalysisView({Key? key}) : super(key: key);
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
          'Current Analysis',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.isFacial.value = true;
                          controller.isBody.value = false;
                        },
                        child: Obx(
                          () => AutoSizeText(
                            'Facial Analysis',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: controller.isFacial.value
                                  ? kbackground
                                  : kgreyish,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 50,
                        color: kgreyish,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.isFacial.value = false;
                          controller.isBody.value = true;
                        },
                        child: Obx(
                          () => AutoSizeText(
                            'Body Analysis',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: controller.isBody.value
                                  ? kbackground
                                  : kgreyish,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 15),
                  ),
                  Obx(
                    () => controller.isFacial.value
                        ? FacialCard(
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
                          )
                        : BodyCard(
                            screen_width: screen_width,
                            screen_height: screen_height,
                            waist_hip_ratio: '0.85-0.89',
                            waist_height_ratio: '6\'1"',
                            Waist_circum: 35.5,
                            bodyfat: 17,
                            chest: 38,
                            waist: 33,
                            hips: 40,
                            thighs: 34,
                            datetime: '',
                            isCheck: false,
                          ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
