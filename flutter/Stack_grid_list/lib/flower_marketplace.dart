import 'package:flutter/material.dart';
import 'package:stack_grid_list/widgets/flowers.dart';
class FlowerMarketPlace extends StatelessWidget{
  const FlowerMarketPlace({super.key});

  @override
  Widget build(BuildContext context){

    List<Map<String, dynamic>> flowers = [
      {
        "name": "Garden Rose",
        "price": 50,
        "image": "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg"
      },
      {
        "name": "Pink Lotus",
        "price": 45,
        "image": "https://images.pexels.com/photos/27207537/pexels-photo-27207537.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Sunflower Field",
        "price": 30,
        "image": "https://images.pexels.com/photos/4151539/pexels-photo-4151539.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Daisy & Butterfly",
        "price": 25,
        "image": "https://images.pexels.com/photos/17161874/pexels-photo-17161874.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Pink Blossoms",
        "price": 40,
        "image": "https://images.pexels.com/photos/6414156/pexels-photo-6414156.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Purple Wildflowers",
        "price": 35,
        "image": "https://images.pexels.com/photos/6598284/pexels-photo-6598284.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Assorted Bouquet",
        "price": 80,
        "image": "https://images.pexels.com/photos/1403401/pexels-photo-1403401.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Orange Marigold",
        "price": 20,
        "image": "https://images.pexels.com/photos/19200233/pexels-photo-19200233.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "White Daisy",
        "price": 15,
        "image": "https://images.pexels.com/photos/8582272/pexels-photo-8582272.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Water Lily",
        "price": 55,
        "image": "https://images.pexels.com/photos/28881680/pexels-photo-28881680.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Green Hydrangea",
        "price": 60,
        "image": "https://images.pexels.com/photos/27359144/pexels-photo-27359144.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Pink Hibiscus",
        "price": 40,
        "image": "https://images.pexels.com/photos/13378402/pexels-photo-13378402.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Pink Dahlia",
        "price": 45,
        "image": "https://images.pexels.com/photos/28862043/pexels-photo-28862043.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Magnolia Tree",
        "price": 70,
        "image": "https://images.pexels.com/photos/19240398/pexels-photo-19240398.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Spring Bouquet",
        "price": 85,
        "image": "https://images.pexels.com/photos/16372799/pexels-photo-16372799.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Blooming Rose",
        "price": 50,
        "image": "https://images.pexels.com/photos/17006241/pexels-photo-17006241.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Peach Rose",
        "price": 55,
        "image": "https://images.pexels.com/photos/19766682/pexels-photo-19766682.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Wildflower Bundle",
        "price": 65,
        "image": "https://images.pexels.com/photos/17888917/pexels-photo-17888917.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Lavender Field",
        "price": 35,
        "image": "https://images.pexels.com/photos/9149581/pexels-photo-9149581.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Cherry Blossom",
        "price": 45,
        "image": "https://images.pexels.com/photos/16405198/pexels-photo-16405198.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Florist Shop',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.pinkAccent,

        leading: Icon(Icons.local_florist, color: Colors.white),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: flowers.length,
        itemBuilder:(context,index){
          final flower = flowers[index];
          return FlowerCard(
            name: flower['name'],
            price: flower['price'],
            image: flower['image'],
          );
        },
      ),
    );
  }
}