// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unused_import

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/components/diet_card.dart';
import 'package:thearc/app/components/facial_card.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/data/facial.dart';
import 'package:thearc/app/data/meals.dart';
import 'package:thearc/app/routes/app_pages.dart';

import '../controllers/meals_plan_controller.dart';

class MealsPlanView extends GetView<MealsPlanController> {
  const MealsPlanView({Key? key}) : super(key: key);
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
          'Meals Plan',
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
              margin: EdgeInsets.only(top: 30, bottom: 10),
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
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 100),
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: meals_data.length,
                          itemBuilder: (context, index) {
                            return DietCard(
                              screen_width: screen_width,
                              screen_height: screen_height,
                              title: meals_data[index].title,
                              editor: meals_data[index].editor,
                              body: meals_data[index].body,
                              image: meals_data[index].image,
                              index: index,
                            );
                          }),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
