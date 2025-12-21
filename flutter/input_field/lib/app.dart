import 'package:flutter/material.dart';
import 'home.dart';
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'input_field',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}