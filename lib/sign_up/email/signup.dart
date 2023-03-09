import 'dart:developer';

import 'package:arab_ai/sign_up/email/password.dart';
import 'package:arab_ai/sign_up/homescreen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: (){
                   Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => ScreenHome()));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.clear),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const AutoSizeText(
                'Hi there,',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const AutoSizeText(
                'Please enter your e-mail address',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border:OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'you@example.com'),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Next"),
                  onPressed: () {

                      setState(() {
                        
                      });

                       if(emailController.text.isEmpty){
                       
                       SnackBar(content: Text("Please enter your email"),);
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar as SnackBar);
                       log("Please enter your email");
                       }

                      else if(isValidEmail(emailController.text) == false){
                          const SnackBar(content: Text("Please enter valid email"),);
                          log("Please enter valid email");
                      }
                      else{
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => PasswordScreen()));

                      }

                    
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/Group4009.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  bool isValidEmail(String email){
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(email);
    }
}
