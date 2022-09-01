// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thearc/app/components/bottom_naviagtion.dart';
import 'package:thearc/app/components/tips_card.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/data/tips.dart';
import 'package:thearc/app/modules/tips/controllers/tips_controller.dart';

class TipsView extends GetView<TipsController> {
  const TipsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: klightBG,
      bottomNavigationBar: Container(
        color: kwhite,
        child: BottomNavigation(
          isHome: false,
          isTip: true,
          isSetting: false,
        ),
      ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              MdiIcons.bellBadge,
              size: 25,
            ),
          ),
        ],
        title: AutoSizeText(
          'Tips & Guidance',
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
                        controller: controller.scrollController,
                        scrollDirection: Axis.vertical,
                        itemCount: tips_data.length + 1,
                        itemBuilder: (context, index) {
                          return index >= tips_data.length
                              ? SizedBox(
                                  height: screen_height - (screen_height - 100),
                                )
                              : TipsCard(
                                  screen_width: screen_width,
                                  screen_height: screen_height,
                                  title: tips_data[index].title,
                                  body: tips_data[index].body,
                                  image: tips_data[index].image,
                                  index: index,
                                );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
