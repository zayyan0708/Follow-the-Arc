// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';

class TermsconditionView extends GetView {
  const TermsconditionView({Key? key}) : super(key: key);
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
          'Terms & Conditions',
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
                  AutoSizeText(
                    'Terms & Condition #1',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kbackground,
                    ),
                  ),
                  AutoSizeText(
                    'This is dummy copy. It is not meant to be read. It hasbeen placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed.These words are here to provide the reader with a basic impression of how actual text will appear in its final presentation. ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 30),
                  ),
                  AutoSizeText(
                    'Terms & Condition #2',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kbackground,
                    ),
                  ),
                  AutoSizeText(
                    'This is dummy copy. It is not meant to be read. It hasbeen placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed.These words are here to provide the reader with a basic impression of how actual text will appear in its final presentation. ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                  SizedBox(
                    height: screen_height - (screen_height - 30),
                  ),
                  AutoSizeText(
                    'Terms & Condition #3',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kbackground,
                    ),
                  ),
                  AutoSizeText(
                    'This is dummy copy. It is not meant to be read. It hasbeen placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed.These words are here to provide the reader with a basic impression of how actual text will appear in its final presentation. ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: kbackground,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
