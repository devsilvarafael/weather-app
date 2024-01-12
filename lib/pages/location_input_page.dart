import 'package:flutter/material.dart';

import 'package:tasks_flutter/controllers/weather_controller.dart';
import 'package:tasks_flutter/widgets/appbar_title.dart';
import 'package:tasks_flutter/core/app_export.dart';

class LocationInputPage extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();

  LocationInputPage({super.key});

  Future<void> submitLocation() async {
    String cityName = cityController.text.trim();
    if (cityName.isNotEmpty) {
      await Get.find<WeatherController>().fetchWeather(cityName);

      Get.toNamed("/clima");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(text: "Bem-vindo", onTap: null),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cloud,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              Text('Digite o nome da cidade',
                  style: TitleTextStyle.getTitleTextStyle()),
              const SizedBox(height: 10),
              TextField(
                controller: cityController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Cidade',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: submitLocation,
                style: WeatherButtonStyle.primaryButtonStyle(context),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'VERIFICAR CLIMA',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
