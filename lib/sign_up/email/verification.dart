import 'package:arab_ai/sign_up/email/confirmation.dart';
import 'package:flutter/material.dart';

class ScreenVerification extends StatelessWidget {
  const ScreenVerification({super.key});

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
                  'assets/images/istockphoto-1328527391-612x612-removebg-preview 1.png'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'A verification e-mail has been sent to your \naddress',
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
                        builder: (context) => ScreenConfirmation()));
                      }, child: Text('Checkc your  E-mail'))),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Haven’t receive a verification ?  Resend E-mail',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
