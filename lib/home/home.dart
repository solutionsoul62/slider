// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../global/global.dart';
import '../slider/horizontal_slider.dart';
import '../slider/vertical_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Slider', style: TextStyle(color: Colors.black)),
          bottom: PreferredSize(
            preferredSize: Size(width, 50),
            child: const TabBar(
              tabs: [Tab(text: 'Horizontal'), Tab(text: 'Vertical')],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            HorizontalSlider(images.length),
            VerticalSlider(images.length),
          ],
        ),
      ),
    );
  }
}
