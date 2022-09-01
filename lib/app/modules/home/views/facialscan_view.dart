// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/rounded_button.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class FacialscanView extends GetView {
  const FacialscanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: kbackground,
        appBar: AppBar(
          backgroundColor: kbackground,
          title: AutoSizeText(
            'Facial Analysis',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kforeground,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: koutline,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.all(15),
          width: screen_width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(kFaceImage),
              AutoSizeText(
                'Make sure you are looking into the camera\nMake sure the lightening is optimal',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: kwhite,
                ),
              ),
              RoundedButton(
                  screen_width: screen_width,
                  screen_height: screen_height,
                  title: 'I\'m Ready',
                  onPressed: () {
                    Get.toNamed(Routes.SCANRESULT);
                  })
            ],
          ),
        )));
  }
}
