import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sign In',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
  
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
                prefixIcon:const Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              ),
          
            ),

            const SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
                prefixIcon:const Icon(
                                Icons.password,
                                color: Colors.grey,
                              ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  ),
                ),
                child:const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0, // Text size
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
              ),
            ),

  ]
      ),
      ),
    );
  }
}
