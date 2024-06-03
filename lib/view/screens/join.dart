import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';

class Join extends StatelessWidget {
  const Join({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/join6.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 50.0,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Agne',
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Explore The World With Our App!',
                            speed: const Duration(milliseconds: 180),
                          ),
                        ],
                        onTap: () {},
                        totalRepeatCount: 4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 80.0),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/signin');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(244, 199, 156, 50),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 130.0,
                        vertical: 16.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/signup');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(244, 199, 156, 80),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 130.0,
                        vertical: 16.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(text: 'Do not have an account?',style: TextStyle(color: Colors.white)),
                        TextSpan(
                            text: ' guest',style: const TextStyle(color: Colors.deepOrangeAccent),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.offNamed('/home');
                              }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
