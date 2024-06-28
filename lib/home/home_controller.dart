import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = 'Paul';
  void changeLanguage({required String language}) {
    Locale locale;

    if (language == 'en') {
      locale = const Locale('en', 'US');
    } else {
      locale = const Locale('fr', 'FR');
    }

    Get.updateLocale(locale);
  }
}
