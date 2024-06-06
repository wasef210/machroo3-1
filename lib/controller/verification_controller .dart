import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VerificationController extends GetxController {
  var isLoading = false.obs;
  var verificationCode = ''.obs;

  void updateCode(String value) {
    verificationCode.value = value;
  }

  Future<void> verifyCode() async {
    isLoading.value = true;

    final code = verificationCode.value;
    final url = 'https://yourapi.com/verify';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'code': code}),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);

        if (responseBody['success']) {
          Get.offAllNamed('/login');
        } else {
          Get.snackbar('Error', 'Invalid Verification Code');
        }
      } else {
        Get.snackbar('Error', 'Server Error');
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong');
    } finally {
      isLoading.value = false;
    }
  }
}
