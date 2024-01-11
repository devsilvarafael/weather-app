import 'dart:convert';

import 'package:get/get.dart';
import 'package:tasks_flutter/models/weather.dart';
import 'package:http/http.dart' as http;

class WeatherController extends GetxController {
  Rx<Weather?> weather = Rx<Weather?>(null);

  void setWeather(Weather newWeather) {
    weather.value = newWeather;
  }

  Future<void> fetchWeather(String cityName) async {
    print("WE ARE HERE");

    const apiKey = '1986ebee6148be5e3abe04c7e3b30b69';
    final geoApiUrl =
        'https://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=$apiKey';

    try {
      final geoResponse = await http.get(Uri.parse(geoApiUrl));

      if (geoResponse.statusCode == 200) {
        final geoData = json.decode(geoResponse.body);
        if (geoData.isNotEmpty) {
          final coordinates = geoData[0];
          final latitude = coordinates['lat'] as double;
          final longitude = coordinates['lon'] as double;

          await fetchWeatherByCoordinates(latitude, longitude);
        } else {
          print('City not found');
        }
      } else {
        print('Error fetching city coordinates');
      }
    } catch (e) {
      // Handle exception
      print('Exception: $e');
    }
  }

  Future<void> fetchWeatherByCoordinates(
      double latitude, double longitude) async {
    const apiKey = '1986ebee6148be5e3abe04c7e3b30b69';
    final weatherApiUrl =
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&lang=pt_br&appid=$apiKey&units=metric';

    try {
      final response = await http.get(Uri.parse(weatherApiUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final weatherData = Weather(
          cityName: data['name'],
          temperature: data['main']['temp'].toDouble(),
          description: data['weather'][0]['description'],
          humidity: data['main']['humidity'],
        );

        setWeather(weatherData);
      } else {
        print('Error fetching weather data');
      }
    } catch (e) {
      // Handle exception
      print('Exception: $e');
    }
  }
}
