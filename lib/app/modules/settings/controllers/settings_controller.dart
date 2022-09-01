// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thearc/app/data/faqs.dart';

class SettingsController extends GetxController
    with GetTickerProviderStateMixin {
  var checkpass1 = false.obs;
  var checkpass2 = false.obs;
  List<FocusNode> focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  var notiswitch = false.obs;
  //faqs
  late List<GlobalKey> expansionTile;
  int selected = -1;
//payment mangement
  var seletedCard = 0.obs;
  var seletedMethod = 'credit'.obs;
  @override
  void onInit() {
    expansionTile =
        List<GlobalKey>.generate(faqs.length, (index) => GlobalKey());
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
}
