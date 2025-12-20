import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(
          'Maiden App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(
            'Hello Rayhan!',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        
            Text(
              'Welcome to Flutter',
              style: TextStyle(fontSize: 20,color: Colors.black),
            ),
        
            Icon(
              Icons.thumb_up,
              color: Colors.green,
              size: 50,
            ),
        
            // Expanded(
            //   child: Text(
            //     'This is a very long text that will normally crash the screen but now it is safe!',
            //     style: TextStyle(fontSize: 20, color: Colors.red),
            //   ),
            // ),
            
            Text(
              "One day I'll shine In sha Allah",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
        ],
        ),
      ),
    );
  }
}