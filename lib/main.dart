import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'DApps Web3',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      useMaterial3: true,
    ),
    home: const App(),
  ));
}
