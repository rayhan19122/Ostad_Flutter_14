import 'package:flutter/material.dart';
import 'assignment.dart';
import 'home.dart';
import 'stack.dart';
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      home: TravelApp(),
    );

  }

}