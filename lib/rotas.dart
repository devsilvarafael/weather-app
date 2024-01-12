import 'package:tasks_flutter/core/app_export.dart';
import 'package:tasks_flutter/pages/location_input_page.dart';
import 'package:tasks_flutter/pages/weather_display_page.dart';

class Rotas {
  static const inicial = '/';
  static const primeira = '/clima';

  static List<GetPage> pages = [
    GetPage(
      name: inicial,
      page: () => LocationInputPage(),
    ),
    GetPage(name: primeira, page: () => const WeatherDisplayPage()),
  ];
}
