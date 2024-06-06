import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mashroo3/view/screens/login.dart';
import 'package:mashroo3/view/screens/register.dart';
import 'package:mashroo3/view/screens/splash.dart';
import 'package:mashroo3/view/screens/onboarding.dart';
import 'package:mashroo3/view/screens/onboarding2.dart';
import 'package:mashroo3/view/screens/join.dart';
import 'package:mashroo3/view/screens/home.dart';
import 'package:mashroo3/view/screens/verification.dart';
void main() => runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/boarding1', page: () => const Onboarding()),
      GetPage(name: '/boarding2', page: () => const Onboarding2()),
      GetPage(name: '/join', page: () => const Join()),
      GetPage(name: '/home', page: () => const Home()),
      GetPage(name: '/signup', page: () => Register()),
      GetPage(name: '/signin', page: () => Login()),
          GetPage(name: '/verification', page:() => Verification() )
    ],
    home:const Splash()));
