import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Get.put(HomeController());

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('translation'.tr),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () => controller.changeLanguage(language: 'fr'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('hello'.tr),
            const SizedBox(height: 20),
            Text('name'.trArgs(['Denis', 'Jane'])),
            Text('name'.trArgs([controller.name, 'Mary'])),
            const SizedBox(height: 20),
            Text('country'.trParams({
              'name': 'Pauline',
              'country': 'France',
            }))
          ],
        ),
      ),
    );
  }
}

// My name is Denis