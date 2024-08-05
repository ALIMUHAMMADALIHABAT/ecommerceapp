import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashAnimationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    fadeAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );

    animationController.forward();

    Timer(const Duration(seconds: 10), () {
      Get.offNamed('/onboarding');
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
