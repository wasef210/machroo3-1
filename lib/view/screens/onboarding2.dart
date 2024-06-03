import 'package:flutter/material.dart';
import 'package:mashroo3/view/widgets/boardingwidget.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingWidget(
        imagePath: 'assets/onboarding2.jpg',
        titleText: 'World is Waiting for you',
        subtitleText: 'Yes Exactly! Get hold of your passport and begin your adventure',
        nextRoute: '/join',
        buttontext: 'Get Started !',




      ),
    );
  }
}

