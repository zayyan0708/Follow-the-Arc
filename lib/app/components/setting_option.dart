// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable, camel_case_types, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:thearc/app/data/constants.dart';

class Setting_options extends StatelessWidget {
  Setting_options({
    required this.screen_height,
    required this.screen_width,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  var title;
  var icon;
  var onPressed;
  final double screen_height;
  final double screen_width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
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
                  icon,
                  color: kbackground,
                  size: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.04,
                  ),
                  child: AutoSizeText(
                    title,
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
    );
  }
}
