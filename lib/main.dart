// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print


import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
      ),
      home: const MyHomePage(title: 'Auto Slider'),
      debugShowCheckedModeBanner: false,
    );
  }
}
