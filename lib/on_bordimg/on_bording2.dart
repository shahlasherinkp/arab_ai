import 'dart:ui';

import 'package:flutter/material.dart';

class OnBordingg extends StatelessWidget {
  const OnBordingg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 160, left: 25, right: 25, bottom: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/second_1.png'),
            // Image.asset('assets/images/Group1.png'),
            Text(
                'Kickstart your content now with simple \n steps and improve your brand’s voice \n and tone.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  
                ),),
            SizedBox(
              width: 380,
              height: 44,
              
              
              child: ElevatedButton(onPressed: () {}, child: Text('Get Started')))
          ],
        ),
      ),
    );
  }
}