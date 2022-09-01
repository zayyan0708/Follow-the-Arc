// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_new

import 'package:auto_size_text/auto_size_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:thearc/app/data/constants.dart';

TextFormField CustomTextField({
  required FocusNode focusNode,
  required String label,
  required IconData fieldIcon,
  required var textColor,
  var isEmail = false,
  var isName = false,
  var isNum = false,
}) {
  return TextFormField(
    validator: isEmail == true
        ? (email) {
            if (email != null && !EmailValidator.validate(email)) {
              return 'Enter a valid email';
            } else if (email == null) {
              return 'Please Enter Email';
            } else {
              return null;
            }
          }
        : isName == true
            ? (name) {
                if (name != null && name.contains(new RegExp(r'[A-Z]'))) {
                  return 'Enter a valid name';
                } else if (name!.isEmpty) {
                  return 'Please Enter Name';
                } else {
                  return null;
                }
              }
            : isNum == true
                ? (pass) {
                    if (pass != null &&
                        new RegExp(r'^[0-9]+$').hasMatch(pass)) {
                      return 'Enter only Number';
                    }
                  }
                : (value) {
                    return null;
                  },
    focusNode: focusNode,
    cursorColor: kforeground,
    style: TextStyle(color: textColor),
    //keyboardType: TextInputType.name,
    onChanged: (value) {},
    decoration: InputDecoration(
      label: AutoSizeText(
        label,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: focusNode.hasFocus ? kforeground : Color(0xFF999999),
        ),
      ),
      prefixIcon: Icon(
        fieldIcon,
        color: focusNode.hasFocus ? kforeground : Color(0xFF999999),
      ),
      focusColor: kforeground,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: koutline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: kforeground,
        ),
      ),
    ),
  );
}

TextFormField PasswordField(
    {required FocusNode focus_Node,
    required String labelText,
    required var textColor,
    required var controller,
    var isObscure,
    var suffixFunc,
    var suffixIcon}) {
  return TextFormField(
    validator: (pass) {
      if (pass!.isEmpty) {
        return 'Please Enter Password';
      } else {
        return null;
      }
    },
    focusNode: focus_Node,
    cursorColor: kforeground,
    obscureText: isObscure,
    style: TextStyle(color: textColor),
    keyboardType: TextInputType.name,
    onChanged: (value) {},
    decoration: InputDecoration(
      label: AutoSizeText(
        labelText,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: focus_Node.hasFocus ? kforeground : kgreyish,
        ),
      ),
      suffixIcon: GestureDetector(
        onTap: () {
          suffixFunc();
        },
        child: Icon(
          suffixIcon,
          color: focus_Node.hasFocus ? kforeground : kgreyish,
        ),
      ),
      prefixIcon: Icon(
        Icons.lock,
        color: focus_Node.hasFocus ? kforeground : kgreyish,
      ),
      focusColor: kforeground,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: koutline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
          color: kforeground,
        ),
      ),
    ),
  );
}
