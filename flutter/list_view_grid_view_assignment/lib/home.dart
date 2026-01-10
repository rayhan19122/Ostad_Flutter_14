import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget{
  const TravelApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.grey,
      // ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(0),
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

                SizedBox(height: 20,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Top Destinations',
                    style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(height: 5,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 260,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.5,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Container(
                          height: 10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            //color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://images.pexels.com/photos/2166553/pexels-photo-2166553.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 5,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Trending Packages',
                    style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),


              ],
            ),
          ),
      ),
    );
  }

}