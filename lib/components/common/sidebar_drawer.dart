import 'package:flutter/material.dart';

import 'package:train_indicator/pages/city_map_page.dart';

class SidebarDrawer extends StatelessWidget {
  const SidebarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          ListTile(
            leading: const Icon(Icons.system_update),
            title: const Text('Update Timetable'),
            onTap: () {
              // Handle item 1 tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('View Map'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CityMapPage(
                    title: 'View Map',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
