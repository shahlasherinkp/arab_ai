
import 'package:arab_ai/Socialmedia/email.dart';
import 'package:arab_ai/Socialmedia/facebook.dart';
import 'package:arab_ai/Socialmedia/fbresult.dart';
import 'package:arab_ai/Socialmedia/socialmedia.dart';
import 'package:arab_ai/edit/chooseplan/chooseplan1.dart';
import 'package:arab_ai/edit/chooseplan/payment.dart';
import 'package:arab_ai/edit/edit.dart';
import 'package:arab_ai/home/home1.dart';
import 'package:arab_ai/home/imagegen.dart';
import 'package:arab_ai/home/sidemenu.dart';
import 'package:arab_ai/on_bordimg/on_bording1.dart';
import 'package:arab_ai/on_bordimg/on_bording2.dart';
import 'package:arab_ai/sign_up/email/confirmation.dart';
import 'package:arab_ai/sign_up/email/signup.dart';

import 'package:arab_ai/sign_up/email/username.dart';
import 'package:arab_ai/sign_up/email/verification.dart';

import 'package:arab_ai/sign_up/homescreen.dart';
import 'package:arab_ai/sign_up/signin.dart';

import 'package:arab_ai/splashscreen/spalsh.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp( MyApp());
// }
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
        const MyApp(),
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: ChoosePlan(),
    );
  }
}
