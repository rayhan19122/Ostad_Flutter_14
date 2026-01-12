import 'package:flutter/material.dart';
import 'package:list_view_grid_view_assignment/widgets/destinations.dart';
import 'package:list_view_grid_view_assignment/widgets/trending_list.dart';

class TravelApp extends StatelessWidget{
  const TravelApp({super.key});
  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> destinations = [
      {
        'name': 'Colosseum Rome',
        'img': 'https://images.pexels.com/photos/20221268/pexels-photo-20221268.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Taj Mahal',
        'img': 'https://images.pexels.com/photos/27727705/pexels-photo-27727705.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Grand Canyon',
        'img': 'https://images.pexels.com/photos/11845250/pexels-photo-11845250.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Bhutan Monastery',
        'img': 'https://images.pexels.com/photos/4525420/pexels-photo-4525420.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Slovenia Bridge',
        'img': 'https://images.pexels.com/photos/3045635/pexels-photo-3045635.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Madagascar Shore',
        'img': 'https://images.pexels.com/photos/3880176/pexels-photo-3880176.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Oman Coast',
        'img': 'https://images.pexels.com/photos/13026615/pexels-photo-13026615.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Namibia Canyon',
        'img': 'https://images.pexels.com/photos/4762923/pexels-photo-4762923.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Valencia Aerial',
        'img': 'https://images.pexels.com/photos/19952257/pexels-photo-19952257.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
      {
        'name': 'Snowy Norefjell',
        'img': 'https://images.pexels.com/photos/19848795/pexels-photo-19848795.jpeg?auto=compress&cs=tinysrgb&w=600',
      },
    ];

    List<Map<String, dynamic>> packages = [
      {
        'img': "https://images.pexels.com/photos/1483053/pexels-photo-1483053.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Luxury Maldives Resort",
        'nights': 5,
        'days': 6,
        'price': 2500,
      },
      {
        'img': "https://images.pexels.com/photos/19796386/pexels-photo-19796386.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Rome Historical Tour",
        'nights': 4,
        'days': 5,
        'price': 1200,
      },
      {
        'img': "https://images.pexels.com/photos/2166553/pexels-photo-2166553.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Bali Island Escape",
        'nights': 6,
        'days': 7,
        'price': 1500,
      },
      {
        'img': "https://images.pexels.com/photos/27727705/pexels-photo-27727705.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Taj Mahal Experience",
        'nights': 3,
        'days': 4,
        'price': 900,
      },
      {
        'img': "https://images.pexels.com/photos/11845250/pexels-photo-11845250.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Grand Canyon Adventure",
        'nights': 3,
        'days': 4,
        'price': 1100,
      },
      {
        'img': "https://images.pexels.com/photos/4762923/pexels-photo-4762923.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Namibia Desert Safari",
        'nights': 7,
        'days': 8,
        'price': 1800,
      },
      {
        'img': "https://images.pexels.com/photos/338515/pexels-photo-338515.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Paris Romantic Getaway",
        'nights': 4,
        'days': 5,
        'price': 1600,
      },
      {
        'img': "https://images.pexels.com/photos/402028/pexels-photo-402028.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "Kyoto Cultural Trip",
        'nights': 5,
        'days': 6,
        'price': 1400,
      },
      {
        'img': "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&w=600",
        'title': "New York City Lights",
        'nights': 4,
        'days': 5,
        'price': 2000,
      }
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  "https://images.pexels.com/photos/1271619/pexels-photo-1271619.jpeg",
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3)
                  ),
                ),

                Positioned(
                  top: 115,
                  left: 20,
                  child: Text(
                    'Explore the World',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),

                Positioned(
                  left: 20,
                  right: 80,
                  bottom: 20,
                  child: Container(
                    height: 55,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      //textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search destination...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.grey,),
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Top Destinations',
                style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),

            //SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: SizedBox(
                height: 260,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: destinations.length,
                  itemBuilder: (context, index){
                    return DestinationCard(name: destinations[index]['name'], img: destinations[index]['img'],);
                  },
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Trending Packages',
                style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 5,),


            Expanded(
              child: Container(
                //color: Colors.orange,
                child: ListView.builder(
                  itemCount: packages.length,
                  itemBuilder: (context,index){
                    return TrendingList(
                      title: packages[index]['title'],
                      nights: packages[index]['nights'],
                      days: packages[index]['days'],
                      price: packages[index]['price'],
                      img: packages[index]['img'],
                    );
                  },

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}