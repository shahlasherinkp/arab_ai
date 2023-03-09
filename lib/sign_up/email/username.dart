import 'package:arab_ai/sign_up/email/verification.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScreenUsername extends StatelessWidget {
  const ScreenUsername({super.key});

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
             
              const SizedBox(
                height: 70,
              ),
              const AutoSizeText(
                'Lets pick you a username',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
             
             
              TextFormField(
                
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
                    suffixIcon: Icon(Icons.rotate_left_sharp),
                    
                    labelText: 'Username'),
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
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ScreenVerification()));
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
                    Image.asset('assets/images/Group4008.png'),
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
