import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mashroo3/controller/splash_controller.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/splash2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset(
                      'assets/wasef logo-01.png',
                      height: 300,
                      width: 300,
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
