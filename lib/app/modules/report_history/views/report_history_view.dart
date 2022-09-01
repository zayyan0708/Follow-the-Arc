// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/components/body_card.dart';
import 'package:thearc/app/components/facial_card.dart';
import 'package:thearc/app/data/bodydata.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/data/facial.dart';

import '../controllers/report_history_controller.dart';

class ReportHistoryView extends GetView<ReportHistoryController> {
  const ReportHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
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
            'Report History',
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
              left: 20,
              right: 20,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'June, 2022',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kgreyish,
                      ),
                    ),
                    Icon(
                      MdiIcons.calendarMonth,
                      color: kgreyish,
                    )
                  ],
                ),
                SizedBox(
                  height: screen_height - (screen_height - 15),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Obx(
                      () => controller.isFacial.value
                          ? SizedBox(
                              height: screen_height - (screen_height - 600),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: facial_data.length,
                                  itemBuilder: (context, index) {
                                    return FacialCard(
                                      screen_width: screen_width,
                                      screen_height: screen_height,
                                      heart_rate: facial_data[index].heart_rate,
                                      blood_pressure:
                                          facial_data[index].blood_pressure,
                                      breathing_rate:
                                          facial_data[index].breathing_rate,
                                      heart_rate_variability: facial_data[index]
                                          .heart_rate_variability,
                                      heart_beats:
                                          facial_data[index].heart_beats,
                                      cardiac_workload:
                                          facial_data[index].cardiac_workload,
                                      datetime: facial_data[index].datetime,
                                      ischeck: true,
                                    );
                                  }),
                            )
                          : SizedBox(
                              height: screen_height - (screen_height - 600),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: body_list.length,
                                  itemBuilder: (context, index) {
                                    return BodyCard(
                                        screen_width: screen_width,
                                        screen_height: screen_height,
                                        waist_hip_ratio:
                                            body_list[index].waist_hip_ratio,
                                        waist_height_ratio:
                                            body_list[index].waist_height_ratio,
                                        Waist_circum:
                                            body_list[index].Waist_circum,
                                        bodyfat: body_list[index].bodyfat,
                                        chest: body_list[index].chest,
                                        hips: body_list[index].hips,
                                        thighs: body_list[index].thighs,
                                        waist: body_list[index].waist,
                                        datetime: body_list[index].datetime,
                                        isCheck: true);
                                  }),
                            ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
