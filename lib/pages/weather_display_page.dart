// lib/pages/WeatherDisplayPage.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/controllers/weather_controller.dart';

class WeatherDisplayPage extends StatelessWidget {
  const WeatherDisplayPage({super.key});

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
        child: Obx(
          () {
            var weather = Get.find<WeatherController>().weather.value;
            if (weather == null) {
              return const Text('No data available');
            }

            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Obx(
                      () {
                        var weather =
                            Get.find<WeatherController>().weather.value;
                        if (weather == null) {
                          return const Text('No data available',
                              style: TextStyle(fontSize: 18));
                        }

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cidade: ${weather.cityName}',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            const SizedBox(height: 10),
                            Text('Temperatura: ${weather.temperature}°C',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            const SizedBox(height: 10),
                            Text('Descrição: ${weather.description}',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            const SizedBox(height: 10),
                            Text('Umidade: ${weather.humidity}%',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
