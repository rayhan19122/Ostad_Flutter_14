import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'dashboard.dart';
import 'forget_password.dart';
import 'sign_up.dart';
class Login extends StatelessWidget{
  final String mailDomain = '@gmail.com';
  const Login({super.key});

  // bool domainCheck(String value){
  //   return value.endsWith('@gmail.com');
  // }

  bool isValid(String value) {
    bool hasUpper = false;
    bool hasLower = false;
    bool hasDigit = false;
    bool hasSpecial = false;

    for (int i = 0; i < value.length; i++) {
      int ch = value.codeUnitAt(i);

      if (ch >= 65 && ch <= 90) hasUpper = true;
      else if (ch >= 97 && ch <= 122) hasLower = true;
      else if (ch >= 48 && ch <= 57) hasDigit = true;
      else hasSpecial = true;
    }

    return hasUpper && hasLower && hasDigit && hasSpecial;
  }


  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    //final String mailDomain = '@gmail.com';

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
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
                    SizedBox(height: 60,),

                    Container(
                      //width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen.withValues(alpha: 0.3),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.agriculture, color: Colors.green, size: 64),
                      alignment: Alignment.center,
                    ),

                    SizedBox(height: 32,),

                    Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 28),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 8,),

                    Text(
                      'Sign in to continue',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 48,),

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

                    SizedBox(height: 16,),

                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                        errorMaxLines: 3,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          //borderSide: BorderSide(color: Colors.black, width: 1.5),
                        ),

                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.visibility_outlined),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please enter your password';
                        }
                        else if(value.length<8){
                          return 'Password must be at least 8 characters.';
                        }
                        else if(!isValid(value)){
                          return 'It must include a number, uppercase, lowercase and a special character';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 24,),

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    SizedBox(height: 16,),

                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),

                    SizedBox(height: 24,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                        ),

                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
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