import 'package:cloud_on_feira/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_navigation_bar.dart';

class BasePage extends StatefulWidget {
  String title;
  Widget body;
  BasePage({required this.title, required this.body, super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      drawer: const MenuDrawer(),
      extendBody: false,
      body: widget.body,
      bottomNavigationBar: const SpiritBottomNavigationBar(),
    );
  }
}
