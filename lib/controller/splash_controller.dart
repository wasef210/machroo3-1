import 'dart:async';
import 'package:get/get.dart';
import 'package:mashroo3/view/screens/onboarding.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed( const Duration(seconds: 3), () {
      Get.off(const Onboarding());
    });
  }
}


