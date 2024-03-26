import 'package:flutter/material.dart';
import 'package:train_indicator/components/common/sidebar_drawer.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final Widget body;

  const MainLayout({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        primary: true,
      ),
      drawer: const SidebarDrawer(),
      body: body,
    );
  }
}
