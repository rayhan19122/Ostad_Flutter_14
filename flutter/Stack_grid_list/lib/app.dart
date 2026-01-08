import 'package:flutter/material.dart';
import 'stack_ex.dart';
import 'marketplace_screen.dart';
import 'flower_marketplace.dart';
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Stack Widget Mastery",
      home: FlowerMarketPlace(),
      debugShowCheckedModeBanner: false,
    );
  }
}