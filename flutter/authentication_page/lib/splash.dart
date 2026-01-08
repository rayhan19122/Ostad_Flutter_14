import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatelessWidget{
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(24),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                
                child: Icon(Icons.agriculture, color: Colors.green, size: 100),
                alignment: Alignment.center,
              ),

              SizedBox(height: 70,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 40,
                        ),
                      ],
                    ),
                    child: Text(
                      'Krishi App',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green,fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ),


                ],
              ),

              SizedBox(height: 250,),

              SizedBox(
                width: double.infinity,
                height: 56,

                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}