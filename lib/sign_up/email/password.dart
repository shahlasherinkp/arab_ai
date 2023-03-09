import 'dart:developer';

import 'package:arab_ai/sign_up/email/username.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
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
               SizedBox(
                height: 25,
              ),
             
              const SizedBox(
                height: 40,
              ),
              const AutoSizeText(
                'Now secure it with password,',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const AutoSizeText(
                'Please enter a password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration:  InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                     focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border:OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    
                    labelText: 'Minimum 8 characters'),
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
                      if(passwordController.text.isEmpty){
                        const SnackBar(content: Text("Please enter your password"),);
                      }

                      else if(passwordController.text.length < 8){
                        const SnackBar(content: Text("Passoword must be more than 8 characters."),);
                      }
                      else{
                           Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ScreenUsername()));

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
                    Image.asset('assets/images/Group 4009.png'),
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
