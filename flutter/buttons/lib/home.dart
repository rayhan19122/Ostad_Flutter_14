import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       // title: Text(
       //    'My App',
       //    style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
       //  ),
          title: TextButton(
            onPressed: (){
              print('Home Page');
            },
            child: Text(
              'My App',
              style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 22),
            ),
          ),
        actions: [
          IconButton(
            onPressed: (){
              print('Settings tapped');
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
            tooltip: 'Settings',
          ),
          IconButton(
            onPressed: (){
              print('Search tapped');
            },
            icon: Icon(Icons.search),
            color: Colors.white,
            tooltip: 'Search',
          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: (){
                print('Clicked!');
              },
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepPurpleAccent,
                //backgroundColor: Colors.green,
                minimumSize: Size(200, 50),
              ),
              onPressed: (){
                print("You're registered");
              },
              child: Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            TextButton(
              onPressed: (){
                print('Forgot Password');
              },
              child: Text(
                'Forgot Password?',
              ),
            ),

            SizedBox(height: 20),

           GestureDetector(
             onTap: (){
               print('Custom Button Tapped');
             },
             onDoubleTap: (){
               print('Double Tapped!');
             },
             onLongPress: (){
               print('Long Pressed');
             },
             child:  Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.blueAccent,
                 //border: Border.all(color: Colors.black, width: 3),
               ),
               height: 50,
               width: 100,
               // color: Colors.blueGrey,
               child: Center(
                 child: Text(
                   'Custom',
                 style: TextStyle(color: Colors.white),
             ),
           ),
             ),
           ),

           SizedBox(height: 10),

            Material(
              color: Colors.lightBlue, // 1. Give the Material the color
              borderRadius: BorderRadius.circular(20), // Optional: rounded corners

              child: InkWell( // 2. InkWell goes INSIDE the color
                onTap: () {
                  print("Ripple button tapped!");
                },
                child: Container(
                  height: 50,
                  width: 100,
                  //alignment: Alignment.center,
                  child: Center(
                    child: Text("Ripple!", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),

            SizedBox(height: 90),

            SizedBox(
              height: 50,
              //width: 150,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    print('Clicked');
                  },
                  child: Text('Submit')),
            ),

            // Expanded( // Use Expanded instead of SizedBox height
            //   child: SizedBox(
            //     width: 150,
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: Colors.green,
            //             foregroundColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10))),
            //         onPressed: () {
            //           print('Clicked');
            //         },
            //         child: Text('Submit')
            //     ),
            //   ),
            // ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('Add clicked');
        },
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),

    );
  }
}

