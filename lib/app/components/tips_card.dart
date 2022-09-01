// ignore_for_file: prefer_interpolation_to_compose_strings, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';
import 'package:thearc/app/routes/app_pages.dart';

class TipsCard extends StatelessWidget {
  TipsCard({
    required this.screen_width,
    required this.screen_height,
    required this.title,
    required this.body,
    required this.image,
    required this.index,
  });

  final double screen_width;
  final double screen_height;
  final String title;

  final String body;
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.TIPS_DETAIL, arguments: [index, "Tips_tag$index"]);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(8),
          width: screen_width - (screen_width - 345),
          height: screen_height - (screen_height - 270),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: koutline, width: 1.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: screen_width - (screen_width - 325),
                height: screen_height - (screen_height - 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: koutline, width: 1.5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: "Tips_tag$index",
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              AutoSizeText(
                title,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kbackground,
                ),
              ),
              AutoSizeText(
                body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
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
      ),
    );
  }
}
