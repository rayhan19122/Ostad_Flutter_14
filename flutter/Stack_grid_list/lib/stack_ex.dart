import 'package:flutter/material.dart';

class StackExample extends StatelessWidget{
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Widget Mastery")),
      // Center the whole thing so you can see it clearly
      body: Center(
        child: SizedBox(
          width: 300,
          height: 200,
          // ---------------- START OF STACK ----------------
          child: Stack(
            // alignment: Controls where widgets go if they are NOT wrapped in Positioned.
            // Here, any non-positioned widget will sit in the center.
            alignment: Alignment.center,
            children: [

              // LAYER 1: The Background (Bottom)
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network("https://5.imimg.com/data5/ANDROID/Default/2024/12/474136375/XW/NX/TJ/192412408/product-jpeg-1000x1000.jpg", width: double.infinity, height: 200, fit: BoxFit.fill,)),
              // LAYER 2: The Text (Middle)
              // We use Positioned to pin this to the bottom
              const Positioned(
                bottom: 7,
                //top: 20,
                right: 35,
                child: Text(
                  "Nike Air Jordan",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),

              // LAYER 3: The Discount Badge (Top)
              // We pin this to the Top and Right
              Positioned(
                top: 20,
                //left: 20,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "50% OFF",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Positioned(
                  left: 8,
                  top: 8,
                  child: IconButton(onPressed: (){print("hello world");}, icon: Icon(Icons.favorite_outline,color: Colors.white,))
              ),

            ],
          ),
          // ---------------- END OF STACK ----------------
        ),
      ),
    );
  }
}