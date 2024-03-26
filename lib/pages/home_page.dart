import 'package:flutter/material.dart';
import 'package:train_indicator/pages/station_details_page.dart';
import '../utils.dart';

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

class RouteType {
  final String title;
  final String subTitle;

  RouteType({
    required this.title,
    required this.subTitle,
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
      "trainType": ["western", "harbour"],
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
      "trainType": ["western", ""],
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

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Station> stations = [];
  late List<Station> displayedStations = [];
  late List<Map<String, String>> routeType = [
    {"title": 'Western', "shortTitle": "W"},
    {"title": 'Central', "shortTitle": "C"},
    {"title": 'Harbour', "shortTitle": "H"},
    {"title": 'Trans', "shortTitle": "T"},
    {"title": 'Uran', "shortTitle": "U"},
    {"title": 'PN-VR', "shortTitle": "P"},
    {"title": 'Matheran', "shortTitle": "M"}
  ];
  late List trainType = ["Slow", "Fast", "AC", "Ladies", "3 Coaches Ladies"];

  String searchString = '';
  String selectedRouteType = '';

  // Add ScrollController instances
  ScrollController controller1 = ScrollController();

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

  Color getColor(String type) {
    switch (type) {
      case 'western':
        return Colors.blue;
      case 'central':
        return Colors.green;
      case 'harbour':
        return Colors.orange;
      default:
        return Colors.grey;
    }
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
                    controller: controller1,
                    itemCount: displayedStations.length,
                    itemBuilder: (context, index) {
                      final station = displayedStations[index];

                      // Determine train type based on isSlowTrainStops
                      String trainType =
                          station.isFastTrainStops ? 'Fast' : 'Slow';
                      return ListTile(
                          leading: const Icon(Icons.train_sharp),
                          title: Text(capitalizeEachWord(station.name)),
                          subtitle: Text('Train Type: $trainType'),
                          trailing: Text(
                            station.trainType.isNotEmpty
                                ? station.trainType
                                    .map((type) => type.isNotEmpty
                                        ? type.substring(0, 1).toUpperCase()
                                        : '')
                                    .where((substring) => substring.isNotEmpty)
                                    .join(', ')
                                : 'N/A',
                          ),
                          dense: true,
                          // Inside the ListView.builder, update the onTap callback
                          onTap: () {
                            // scroll to up
                            final contentSize =
                                controller1.position.viewportDimension +
                                    controller1.position.maxScrollExtent;
                            final target =
                                contentSize * index / displayedStations.length;

                            controller1.position.animateTo(
                              target,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );

                            // redirect to station details page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StationDetailsPage(
                                  title: capitalizeEachWord(station.name),
                                ),
                              ),
                            );
                          });
                    },
                    // ScrollController: controller1
                  )
                : Center(child: Text('No station found $searchString')),
          ),
        ],
      ),
    );
  }
}
