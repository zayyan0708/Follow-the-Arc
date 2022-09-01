// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.screen_width,
      required this.screen_height,
      required this.title,
      required this.onPressed})
      : super(key: key);

  final double screen_width;
  final double screen_height;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Material(
        elevation: 5.0,
        color: kforeground,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: (() {
            onPressed();
          }),
          minWidth: screen_width,
          height: screen_height * 0.050,
          child: AutoSizeText(
            title,
            style: TextStyle(
                color: kbackground,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
