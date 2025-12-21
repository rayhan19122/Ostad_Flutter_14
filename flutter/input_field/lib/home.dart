import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Welcome',
                style: TextStyle(),
              ),
            ),

            TextField(
              controller: phoneController,
              //keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText:'Phone Number',
                labelStyle: TextStyle(fontSize: 18, color: Colors.black),

                hintText: 'Enter Phone Number',
                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.5)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),

                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
              ),

            ),

            SizedBox(height: 20,),

            TextField(
              controller: passwordController,
              //keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 18, color: Colors.black),

                hintText: 'Enter Password',
                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.5)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),

                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                ),

              ),

            SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              height: 56,

              child: ElevatedButton(
                onPressed: (){
                  print(phoneController.text);

                  if(phoneController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please Enter Phone Number')),
                    );
                  }
                  else if(phoneController.text.length != 11){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please Enter Valid Phone Number')),
                    );
                  }
                  else{
                  phoneController.clear();
                  }
              },

                child: Text('Submit',style: TextStyle(fontSize: 18)),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}