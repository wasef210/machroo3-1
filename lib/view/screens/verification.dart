import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mashroo3/controller/verification_controller .dart';
class Verification extends StatelessWidget {
  final VerificationController _controller = Get.put(VerificationController());

  Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.white),
                ),
                Expanded(
                  child: Container(color:  const Color.fromRGBO(244, 199, 156,50)),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Email Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: SizedBox(
                        width: 50,
                        child: TextField(
                          controller: [
                            _controller.codeController1,
                            _controller.codeController2,
                            _controller.codeController3,
                            _controller.codeController4,
                            _controller.codeController5
                          ][index],
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 24),
                          decoration: InputDecoration(
                            counterText: '',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            _controller.updateCode(index, value);
                            if (value.isNotEmpty && index < 4) {
                              FocusScope.of(context).nextFocus();
                            } else if (index == 4 && value.isNotEmpty) {
                              _controller.verifyCode();
                            }
                          },
                        ),
                      ),
                    );
                  }),
                )),
                Obx(() {
                  if (_controller.isLoading.value) {
                    return const CircularProgressIndicator();
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

