import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/controllers/weather_controller.dart';

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
        title: const Text(
          'Consultar Clima',
          style: TextStyle(color: Colors.white),
        ),
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
              const Text(
                'Digite o nome da cidade',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Verificar clima',
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
