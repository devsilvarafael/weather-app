import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/controllers/weather_controller.dart';

import 'package:tasks_flutter/pages/location_input_page.dart';
import 'package:tasks_flutter/pages/weather_display_page.dart';

void main() {
  Get.put(WeatherController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LocationInputPage(),
      getPages: [
        GetPage(name: '/', page: () => LocationInputPage()),
        GetPage(name: '/clima', page: () => WeatherDisplayPage()),
      ],
    );
  }
}
