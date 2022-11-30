import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Meteo",
      "icon": const Icon(Icons.sunny_snowing),
      "route": "/meteo",
    },
    {
      "title": "Gallery",
      "icon": const Icon(Icons.image),
      "route": "/gallery",
    },
    {
      "title": "Counter",
      "icon": const Icon(Icons.ads_click),
      "route": "/counter",
    },
  ];
}
