// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/data/tips.dart';

class TipsDetailView extends GetView {
  const TipsDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: screen_width,
              height: screen_height - (screen_height - 300),
              child: Hero(
                tag: Get.arguments[1].toString(),
                child: Image.asset(
                  width: screen_width,
                  tips_data[Get.arguments[0]].image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(12),
                width: screen_width - (screen_width - 35),
                height: screen_height - (screen_height - 35),
                decoration: BoxDecoration(
                  color: kforeground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: kbackground,
                  size: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: screen_height * 0.3, bottom: 10),
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
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AutoSizeText(
                    tips_data[Get.arguments[0]].title,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kbackground,
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 8),
                  ),
                  AutoSizeText(
                    tips_data[Get.arguments[0]].body,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
