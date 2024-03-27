import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/city_map_page.dart';
import 'pages/station_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Train Indicator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFD40606), // Primary color
          secondaryHeaderColor: const Color(0xFF0E3D84), // Secondary color
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(title: 'Train Indicator'),
          '/stationDetails': (context) => const StationDetailsPage(title: ""),
          '/cityMap': (context) => const CityMapPage(title: ""),
        });
  }
}
