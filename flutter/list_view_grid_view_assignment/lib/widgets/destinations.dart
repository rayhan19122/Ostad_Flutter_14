import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget{
  String name,img;
  DestinationCard({super.key, required this.name, required this.img});

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          bottom: 5,
          left: 10,
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
          ),
        )

      ],
    );
  }
}