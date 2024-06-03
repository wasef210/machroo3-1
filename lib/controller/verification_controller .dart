import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VerificationController extends GetxController {
  final TextEditingController codeController1 = TextEditingController();
  final TextEditingController codeController2 = TextEditingController();
  final TextEditingController codeController3 = TextEditingController();
  final TextEditingController codeController4 = TextEditingController();
  final TextEditingController codeController5 = TextEditingController();

  final RxBool isLoading = false.obs;
  final RxList<String> code = List<String>.filled(5, '').obs;

  void updateCode(int index, String value) {
    if (index >= 0 && index < 5) {
      code[index] = value;
      code.refresh();
    }
  }

  String getCode() {
    return code.join();
  }

  Future<void> verifyCode() async {
    String code = getCode();

    if (code.length < 5) {
      Get.snackbar('Error', 'Please fill in all fields');
      return;
    }

    isLoading.value = true;

    try {
      var url = Uri.parse('https://your-django-backend.com/api/verify-code/');
      var response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'code': code}),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['success']) {
          Get.snackbar('Success', 'Verification successful');
          // Navigate to another screen or perform other actions
        } else {
          Get.snackbar('Error', 'Invalid verification code');
        }
      } else {
        Get.snackbar('Error', 'Invalid verification code');
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong');
    } finally {
      isLoading.value = false;
    }
  }

  void clearCode() {
    code.fillRange(0, 5, '');
    code.refresh();
  }
}
