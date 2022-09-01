// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, deprecated_member_use, unused_local_variable, unused_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:thearc/app/data/constants.dart';

Future<dynamic> CustomizeBottomSheet(
    BuildContext context, String ttle, String ms, String action) {
  String title = ttle;
  String msg = ms;
  String actionText = action;
  var screen_height = MediaQuery.of(context).size.height;
  var screen_width = MediaQuery.of(context).size.width;
  return showCupertinoModalBottomSheet(
    context: context,
    builder: (context) => Material(
      child: Container(
        width: screen_width,
        height: screen_height - (screen_height - 254),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AutoSizeText(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: kbackground,
              ),
            ),
            Divider(
              color: koutline,
              thickness: 1,
            ),
            AutoSizeText(
              msg,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: kbackground,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AutoSizeText(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    color: kforeground,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      minWidth: screen_width - (screen_width - 200),
                      height: screen_height * 0.050,
                      child: AutoSizeText(
                        actionText,
                        style: TextStyle(
                            color: kbackground,
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
