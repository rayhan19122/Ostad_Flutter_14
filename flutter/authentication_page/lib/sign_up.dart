import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  const SignUp({super.key});

  final String mailDomain = '@gmail.com';
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

  bool isOk(String value){
    for(int i=0;i<value.length;i++){
      int ch = value.codeUnitAt(i);
      if((ch>=65 && ch<=90) || (ch>=97 && ch<=122) || (ch==32)) continue;
      else return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController =  TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

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
                  SizedBox(height: 20,),

                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 28, color: Colors.green, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 8,),

                  Text(
                    'Create your account to get started',
                    style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 32,),

                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter your full name',
                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.person_outline),
                    ),

                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'Please enter your full name';
                      }
                      else if(!isOk(value)){
                        return 'Name must contain only alphabets and spaces';
                      }
                    },

                  ),

                  SizedBox(height: 16,),

                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
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
                    },

                  ),

                  SizedBox(height: 16,),

                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.phone_outlined),
                    ),

                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'Please enter your phone number';
                      }
                      else if(value.length!=11 || !(value.startsWith('017') || value.startsWith('018') || value.startsWith('019') || value.startsWith('015') || value.startsWith('013') || value.startsWith('014') || value.startsWith('016'))){
                      return 'Invalid phone number or operator';
                      }
                      else return null;
                    },

                  ),

                  SizedBox(height: 16,),

                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)
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

                  SizedBox(height: 16,),

                  TextFormField(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Re-enter your password',
                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)
                    ),

                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'Please re-enter your password';
                      }
                      else if(value!=passwordController.text){
                        return 'Password does not match';
                      }
                      else return null;
                    },
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
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Account Created Successfully!'))
                          );
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  SizedBox(height: 24,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                      ),

                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),
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