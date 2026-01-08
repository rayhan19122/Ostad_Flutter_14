import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget{
  const ForgotPassword({super.key});

  final String mailDomain = '@gmail.com';

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Krishi App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.green,
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Form(
            key: _formKey,

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 40,),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.withValues(alpha: 0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.lock_reset,size: 64,color: Colors.green,),
                  ),

                  SizedBox(height: 32,),

                  Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 16,),

                  Text(
                    'Enter your email address and we will send you a link to reset your password.',
                    style: TextStyle(fontSize: 14, color: Colors.grey,fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 40,),

                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          //borderSide: BorderSide(color: Colors.black, width: 1.5),
                        ),

                        prefixIcon: Icon(Icons.email_outlined),
                      ),

                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please enter your email address';
                        }
                        // else if(!valid(value)){
                        //   return 'Please enter a valid email address';
                        // }

                        else if(!value.endsWith(mailDomain) || (value.length<=mailDomain.length)){
                          return 'Please enter a valid email address';
                        }
                        else {
                          return null;
                        }
                      }
                  ),

                  SizedBox(height: 32,),

                  SizedBox(
                    width: double.infinity,
                    height: 56,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Reset link has been sent'))
                          );
                        }
                      },
                      child: Text(
                        'Send Reset Link',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  SizedBox(height: 24,),

                  TextButton(
                    onPressed: ()=>Navigator.pop(context),
                    child: Text(
                      'Back to Login',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}