import 'package:flutter/material.dart';
import 'home.dart';
import 'responsive_boxes.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'MediaQuery Example',
    //   debugShowCheckedModeBanner: false,
    //   // In main.dart
    //   home: Scaffold(
    //     body: Center(
    //       child: Container(
    //         width: 400, // Constrained to "Mobile" size
    //         height: 700,
    //         decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
    //
    //         // We are putting the MQ version inside this small box
    //         child: const ResponsiveDashboard(),
    //       ),
    //     ),
    //   ),
    // );


    return MaterialApp(
      title: 'Responsive Boxes',
      debugShowCheckedModeBanner: false,
      home: ResponsiveBoxes(),
    );

  }

}