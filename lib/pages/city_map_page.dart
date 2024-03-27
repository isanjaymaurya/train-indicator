import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
      body: Stack(
        children: <Widget>[
          const Center(child: CircularProgressIndicator()),
          Center(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://picsum.photos/250?image=9',
              // image: 'https://wr.indianrailways.gov.in/cris//uploads/files/1661774001987-SUBURBAN%20MAP.png',
            ),
          ),
        ],
      ),
    );
  }
}
