// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:thearc/app/data/constants.dart';

class BodyCard extends StatelessWidget {
  BodyCard({
    required this.screen_width,
    required this.screen_height,
    required this.waist_hip_ratio,
    required this.waist_height_ratio,
    required this.Waist_circum,
    required this.bodyfat,
    required this.chest,
    required this.hips,
    required this.thighs,
    required this.waist,
    required this.datetime,
    required this.isCheck,
  });
  final String waist_hip_ratio;
  final String waist_height_ratio;
  final double Waist_circum;
  final double bodyfat;
  final int chest;
  final int waist;
  final int hips;
  final int thighs;
  final String datetime;
  final double screen_width;
  final double screen_height;
  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      padding: EdgeInsets.all(15),
      width: screen_width - (screen_width - 345),
      height: screen_height - (screen_height - 380),
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
          isCheck
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
            'Insights',
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
                      'Waist-Hip\nRatio',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$waist_hip_ratio',
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
                      'Waist-Height\nRatio',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$waist_height_ratio',
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
                      'Waist\nCircumference',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$Waist_circum in',
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
            'Composition',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              color: kforeground,
              fontWeight: FontWeight.w600,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                'Body Fat(%)',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 13,
                  color: klightBG,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AutoSizeText(
                '$bodyfat %',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  color: kwhite,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: kgreyish,
            height: 1,
          ),
          AutoSizeText(
            'Measurements',
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
                      'Chest (In)',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$chest in',
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
                      'Waist (In)',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$waist in',
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
                      'Hips (In)',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$hips in',
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
                      'Thighs (In)',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        color: klightBG,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      '$thighs in',
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
