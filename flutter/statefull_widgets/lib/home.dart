import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp>{
  int counter=0;

  void increment(){
    setState(() {
      counter++;
    });
  }
  void decrement(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child:Padding(
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: CircleBorder(),
                ),
                onPressed: (){
                  increment();
                },
                child: Icon(Icons.add,color: Colors.white,fontWeight: FontWeight.bold,),
              ),

              Text(
                '$counter',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: CircleBorder(),
                ),
                onPressed: (){
                  decrement();
                },
                child: Icon(Icons.remove,color: Colors.white,fontWeight: FontWeight.bold,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}