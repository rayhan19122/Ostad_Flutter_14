import 'package:flutter/material.dart';

class FlowerMarketPlace extends StatelessWidget{
  const FlowerMarketPlace({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Holly Flowers',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28, fontStyle: FontStyle.italic),
        ),

        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}