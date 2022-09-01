// ignore_for_file: avoid_function_literals_in_foreach_calls, unnecessary_overrides

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignupController extends GetxController {
  var checkpass1 = true.obs;
  var checkpass2 = true.obs;
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  List<FocusNode> focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  List isStrechedDropDown = [false.obs, false.obs, false.obs, false.obs];
  var qans1 = ''.obs;
//image picker
  var selectedImagePath = ''.obs;
  var isSelectedImage = false.obs;
  File? pickedFile;
  void getImage(ImageSource imageSource) async {
    final pickedImage =
        await ImagePicker().pickImage(source: imageSource, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    selectedImagePath.value = pickedImage.path;
    isSelectedImage.value = true;
  }

  @override
  void onInit() {
    focusNodes.forEach((node) {
      node.addListener(() {
        // setState(() {});
      });
    });
    super.onInit();
  }

  focusReset() {
    focusNodes.forEach((node) {
      node.addListener(() {
        // setState(() {});
      });
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
