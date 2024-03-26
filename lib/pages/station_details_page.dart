import 'package:flutter/material.dart';

class StationDetailsPage extends StatefulWidget {
  final String title;

  const StationDetailsPage({Key? key, required this.title}) : super(key: key);

  @override
  _StationDetailsState createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        primary: true,
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: Text('No station found'),
            ),
          ),
        ],
      ),
    );
  }
}
