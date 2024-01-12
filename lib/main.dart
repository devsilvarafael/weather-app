import 'package:flutter/material.dart';

import 'package:tasks_flutter/controllers/weather_controller.dart';
import 'package:tasks_flutter/core/app_export.dart';

import 'package:tasks_flutter/pages/location_input_page.dart';

void main() {
  Get.put(WeatherController());

  runApp(const MyApp());
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
      getPages: Rotas.pages,
    );
  }
}
