import 'package:flutter/material.dart';

class CityMapPage extends StatefulWidget {
  final String title;

  const CityMapPage({super.key, required this.title});

  @override
  _CityMapState createState() => _CityMapState();
}

class _CityMapState extends State<CityMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20),
          minScale: 0.1,
          maxScale: 3.0,
          child: Image.network(
            'https://raw.githubusercontent.com/isanjaymaurya/train-indicator/main/static-pages/images/city-route-map.png', // Replace URL with your image URL
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
