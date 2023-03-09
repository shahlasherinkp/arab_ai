import 'dart:async';

import 'package:arab_ai/on_bordimg/on_bording1.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
       () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
        (BuildContext context) => Onbording()
        ));
       });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.lightBlue,
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Group.png'),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    const Text(
                      'ARABY AI',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
