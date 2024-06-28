import 'package:flutter/material.dart';
import 'package:flutter_translation/home/home.dart';
import 'package:flutter_translation/translations/app_translation.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translationKeys,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      home: MyHomePage(),
    );
  }
}
