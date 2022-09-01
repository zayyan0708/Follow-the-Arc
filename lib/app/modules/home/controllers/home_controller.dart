// ignore_for_file: unnecessary_overrides

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  List<FocusNode> focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  final formKey = GlobalKey<FormState>();
  var selectedImagePath = ''.obs;
  var isSelectedImage = false.obs;
  File? pickedFile;
  File? newImage;
  void getImage(ImageSource imageSource) async {
    final pickedImage =
        await ImagePicker().pickImage(source: imageSource, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    selectedImagePath.value = pickedImage.path;
    isSelectedImage.value = true;

    //final String path = await getApplicationDocumentsDirectory().path;

// copy the file to a new path
    // newImage = await pickedFile!
    //     .copy('C:/Users/Syed Zayyan/thearc/assets/images/image1.png');
  }

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
