import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/homePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Date Picker",
      home: HomePage(),
    );
  }
}

