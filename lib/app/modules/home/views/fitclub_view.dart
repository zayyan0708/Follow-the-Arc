// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FitclubView extends GetView {
  const FitclubView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FitclubView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FitclubView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
