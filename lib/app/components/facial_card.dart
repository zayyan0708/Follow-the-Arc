// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:thearc/app/data/constants.dart';

class FacialCard extends StatelessWidget {
  FacialCard({
    required this.screen_width,
    required this.screen_height,
    required this.heart_rate,
    required this.blood_pressure,
    required this.breathing_rate,
    required this.heart_rate_variability,
    required this.heart_beats,
    required this.cardiac_workload,
    required this.datetime,
    required this.ischeck,
  });
  final int heart_rate;
  final int blood_pressure;
  final int breathing_rate;
  final int heart_rate_variability;
  final int heart_beats;
  final int cardiac_workload;
  final String datetime;
  final double screen_width;
  final double screen_height;
  final bool ischeck;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      padding: EdgeInsets.all(15),
      width: screen_width - (screen_width - 345),
      height: screen_height - (screen_height - 260),
      decoration: BoxDecoration(
        color: kbackground,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: koutline,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ischeck
              ? AutoSizeText(
                  '$datetime',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 13,
                    color: kwhite,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : Row(),
          AutoSizeText(
            'Vital Signs',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              color: kforeground,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Heart Rate',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$heart_rate bpm',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: kgreyish,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Blood Pressure',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$blood_pressure mm hg',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: kgreyish,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Breathing Rate',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$breathing_rate pr/min',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: kgreyish,
            height: 1,
          ),
          AutoSizeText(
            'Health Indicators',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              color: kforeground,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Heart Rate',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      'Variability',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$heart_rate_variability bpm',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: kgreyish,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Irregular',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      'Heart Beats',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$heart_beats bpm',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: kgreyish,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Cardiac',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      'Workload',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$cardiac_workload HR',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
