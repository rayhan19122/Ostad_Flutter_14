import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'অ্যাকাউন্ট তৈরি করুন',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back, color: Colors.white, fontWeight: FontWeight.bold, size: 30,)),
        backgroundColor: Colors.green,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),

              Text(
                'নিবন্ধন করুন',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.green),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 8,),

              Text(
                'শুরু করতে আপনার অ্যাকাউন্ট তৈরি করুন',
                style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 32,),

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'পূর্ণ নাম',
                  hintText: 'আপনার পূর্ণ নাম লিখুন',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green, width: 1.5),
                  ),
                  
                  prefixIcon: Icon(Icons.person_outline)
                ),
              ),

              SizedBox(height: 16,),

              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'ইমেইল',
                  hintText: 'আপনার ইমেইল লিখুন',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(15)
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'মোবাইল নম্বর',
                  hintText: 'আপনার মোবাইল নম্বর লিখুন',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green, width: 1.5),
                  ),

                  prefixIcon: Icon(Icons.phone_outlined),
                ),
              ),

              SizedBox(height: 16,),

              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'পাসওয়ার্ড',
                  hintText: 'আপনার পাসওয়ার্ড লিখুন',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green, width: 1.5),
                  ),

                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),

              SizedBox(height: 16,),

              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'পাসওয়ার্ড নিশ্চিত করুন',
                  hintText: 'আবার পাসওয়ার্ড লিখুন',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green, width: 1.5),
                  ),

                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),

              SizedBox(height: 32,),

              SizedBox(
                height: 56,
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: (){
                    print('Congratulations! Login Successful');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'নিবন্ধন করুন',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),

              SizedBox(height: 24,),

              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ইতিমধ্যে অ্যাকাউন্ট আছে?',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: (){
                      print('Getting back to the Login page!');
                    }, child: Text('লগইন', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}