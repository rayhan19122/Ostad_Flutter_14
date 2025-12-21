import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'কৃষকের বন্ধু',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
        // actions: [
        //   IconButton(onPressed: (){}, icon: Icon(Icons.agriculture, color: Colors.white,))
        // ],
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.agriculture, color: Colors.white, size: 30,)),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60,),

            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.lightGreen.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.agriculture,
                size: 64,
                color: Colors.green,
              ),
            ),

            SizedBox(height: 32,),

            Text(
              'স্বাগতম',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 8,),

            Text(
              'চালিয়ে যেতে সাইন ইন করুন',
              style: TextStyle(fontSize: 14, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 48,),

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'ইমেইল',
                hintText: 'আপনার ইমেইল লিখুন',
                hintStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.green, width: 1.5),
                ),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),

            SizedBox(height: 16,),

            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'পাসওয়ার্ড',
                hintText: 'আপনার পাসওয়ার্ড লিখুন',
                hintStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.green, width: 1.5),
                ),
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
              ),
            ),

            SizedBox(height: 24,),

            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  print('অভিনন্দন লগইন হয়েছে।');
                },
                child: Text(
                  'লগইন',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  //padding: EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16,),

            TextButton(
              onPressed: (){
                print('আপনিতো শেষ!');
              },
              child: Text(
                'পাসওয়ার্ড ভুলে গেছেন?',
                style: TextStyle(color: Colors.green),
              ),
            ),

            SizedBox(height: 24,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('অ্যাকাউন্ট নেই?'),

                TextButton(onPressed: (){print('যান গিয়ে অ্যাকাউন্ট খুলুন');}, child: Text('নিবন্ধন করুন', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}