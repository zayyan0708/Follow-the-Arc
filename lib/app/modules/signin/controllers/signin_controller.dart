// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  List<FocusNode> focusNodes = [
    FocusNode(),
    FocusNode(),
  ];
  final formKey = GlobalKey<FormState>();
  var checkpass1 = true.obs;
  var checkpass2 = true.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
