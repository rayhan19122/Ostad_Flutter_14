import 'package:flutter/material.dart';

class FlowerCard extends StatelessWidget{
  //const FlowerCard({super.key});

  final String name;
  final num price;
  final String image;

  FlowerCard({super.key, required this.name, required this.price,required this.image});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(image,
                fit: BoxFit.cover,
              ) ,
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),

            ),
          ),

          Positioned(
            top: 10,
            left: 10,
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
            ),
          ),

          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "$price Tk",
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          )


        ],
      ),
    );
  }
}