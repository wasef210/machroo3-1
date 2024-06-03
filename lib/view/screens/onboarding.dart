import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mashroo3/view/widgets/boardingwidget.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          const BoardingWidget(
            imagePath: 'assets/onboarding 1.jpg',
            titleText: 'Plane Your Own Journey',
            subtitleText:
                'Plane your own journey with our travel planning app! Discover new destination, create itineraries and make unforgettable memories',
            nextRoute: '/boarding2',
            buttontext: 'Continue',
          ),
          Positioned(
            top: 20,
            right: 4,
            child: TextButton(
              style: TextButton.styleFrom(

                foregroundColor: Colors.black87,
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onPressed: () {
                Get.offNamed('/join');
              },
              child: const Text('Skip'),
            ),
          )
        ],
      ),
    );
  }
}
