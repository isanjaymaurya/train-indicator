import 'package:flutter/material.dart';
import 'utils.dart';

// Define data models
class Station {
  final String name;
  final bool isSuperFastTrainStops;
  final bool isFastTrainStops;
  final bool isSlowTrainStops;
  final bool isSourceOrDestStation;
  final List<String> trainType;

  Station({
    required this.name,
    required this.isSuperFastTrainStops,
    required this.isFastTrainStops,
    required this.isSlowTrainStops,
    required this.isSourceOrDestStation,
    required this.trainType,
  });
}

// Fetch data from demo API
Future<List<Station>> fetchStations() async {
  // Simulate fetching data from API
  // Replace this with actual API call
  List<Map<String, Object>> jsonData = [
    {
      "name": "dahanu road",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": true
    },
    {
      "name": "vangoan",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "boisar",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "umroil road",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "palghar",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "kelva road",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "saphale",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "vaitarana",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "virar",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": true
    },
    {
      "name": "nallasopara",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "vasai",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "naigoan",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "bhayander",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "mira road",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "dahisar",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "boriwali",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": true
    },
    {
      "name": "kandiwali",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "malad",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "goregoan",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["harbour", "western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "ram mandir",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "jogeshwari",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "andheri",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "vile parle",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "santa cruz",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "khar road",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "bandra",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "mahin jn",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "matunga road",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "dadar",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["central", "western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "prabhadevi",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "lower parel",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "mahalakhsmi",
      "isSuperFastTrainStops": false,
      "isFastTrainStops": false,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "mumbai central",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "grant road",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "churni road",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "marine lines",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["western"],
      "isSourceOrDestStation": false
    },
    {
      "name": "churchagate",
      "isSuperFastTrainStops": true,
      "isFastTrainStops": true,
      "isSlowTrainStops": true,
      "trainType": ["central"],
      "isSourceOrDestStation": true
    }
  ];

  return jsonData
      .map((json) => Station(
          name: json['name'] as String,
          isSuperFastTrainStops: json['isSuperFastTrainStops'] as bool,
          isFastTrainStops: json['isFastTrainStops'] as bool,
          isSlowTrainStops: json['isSlowTrainStops'] as bool,
          trainType: (json['trainType'] as List<dynamic>)
              .map((e) => e.toString())
              .toList(),
          isSourceOrDestStation: json['isSourceOrDestStation'] as bool))
      .toList();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Train Indicator',
      theme: ThemeData(
        primaryColor: const Color(0xFFD40606), // Primary color
        secondaryHeaderColor: const Color(0xFF0E3D84), // Secondary color
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Train Stations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Station> stations = [];
  late List<Station> displayedStations = [];
  final List trainTypes = ['western', 'central', 'harbour'];
  String searchString = '';
  String selectedTrainType = '';

  @override
  void initState() {
    super.initState();
    fetchStations().then((value) {
      setState(() {
        stations = value;
        displayedStations = stations;
      });
    });
  }

  void _filterStations(String query) {
    setState(() {
      displayedStations = stations
          .where((station) =>
              station.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
      searchString = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        primary: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterStations,
              decoration: const InputDecoration(
                hintText: 'You are at?',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: displayedStations.isNotEmpty
                ? ListView.builder(
                    itemCount: displayedStations.length,
                    itemBuilder: (context, index) {
                      final station = displayedStations[index];
                      // Determine train type based on isSlowTrainStops
                      String trainType =
                          station.isFastTrainStops ? 'Fast' : 'Slow';
                      return ListTile(
                          title: Text(capitalizeEachWord(station.name)),
                          subtitle: Text('Train Type: $trainType'),
                          dense: true);
                    },
                  )
                : Center(child: Text('No station found $searchString')),
          ),
        ],
      ),
    );
  }
}
