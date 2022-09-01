// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/data/faqs.dart';
import 'package:thearc/app/modules/settings/controllers/settings_controller.dart';

class FaqsView extends GetView<SettingsController> {
  const FaqsView({Key? key}) : super(key: key);
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
            'Terms & Conditions',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kbackground,
            ),
          ),
        ),
        body: Container(
            //padding: EdgeInsets.all(20),
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: screen_height - (screen_height - 30),
                  ),
                  ListView.builder(
                    key: Key('bilder ${controller.selected.toString()}'),
                    padding: EdgeInsets.only(left: 5, right: 5),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: faqs.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: koutline),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 14,
                            right: 14,
                          ),
                          child: ExpansionTile(
                            key: Key(index.toString()),
                            initiallyExpanded: index == controller.selected,
                            onExpansionChanged: (newState) {
                              if (newState) {
                                controller.selected = index;
                              } else {
                                controller.selected = -1;
                              }
                            },
                            title: AutoSizeText(
                              faqs[index].header,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kbackground,
                              ),
                            ),
                            children: [
                              AspectRatio(
                                aspectRatio: 2.0,
                                child: AutoSizeText(
                                  faqs[index].body,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kbackground,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }
}
