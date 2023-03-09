import 'package:arab_ai/home/home1.dart';
import 'package:arab_ai/sign_up/homescreen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScreenConfirmation extends StatelessWidget {
  const ScreenConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                  'assets/images/verify-security-2870306-2386774 1.png'),
              const SizedBox(
                height: 50,
              ),
              const AutoSizeText(
                'Hi username, Your email has been verified \nsuccessfully in our system. ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 180,
              ),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                         Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomeNew()));
                      }, child: Text('Explore Now'))),
            
            ],
          ),
        ),
      ),
    );
  }
}