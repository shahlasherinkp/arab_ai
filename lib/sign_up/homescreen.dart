import 'package:arab_ai/sign_up/email/signup.dart';
import 'package:arab_ai/sign_up/signin.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Image.asset(
                      'assets/images/Group.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(height: 20),
                    const AutoSizeText(
                      'Getting started',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      minFontSize: 18,
                      // maxFontSize: 22,
                    ),
                    const SizedBox(height: 20),
                    const AutoSizeText(
                      'Create an account and continue',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      minFontSize: 15,
                      // maxFontSize: 18,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const AutoSizeText(
                      '- USE -',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 45,
                        right: 45,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignupScreen()));
                            },
                            child: Image.asset('assets/images/phone.png'),
                          ),
                          
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder:(context) => const SignupScreen()));
                            },
                            child: Image.asset('assets/images/e-mail.png'))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    const AutoSizeText(
                      '- OR -',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 70,
                        left: 70,
                        
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/facebook.png'),
                          Image.asset('assets/images/google.png'),
                          Image.asset('assets/images/apple 1.png'),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'By Registering you agree to our ',
                        style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(text: 'Terms of use ', style: 
                          TextStyle(fontSize:12,
                          fontWeight: FontWeight.w600 )),
                          TextSpan(text:'and ',
                          style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.w400),
                        
                           ),
                           TextSpan(text: 'privacy policy ',
                           style:   TextStyle(fontSize:12,
                          fontWeight: FontWeight.w600 )
                           )
                        ]
                        
                      ),
                      
                    ),
                    SizedBox(height: 8,),
                    Center(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account ",
                                  style: TextStyle(fontSize: 12,
                           fontWeight: FontWeight.w400),
                          ),

                          GestureDetector
                          (
                            onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SigninScreen()));

                            },
                            child: const Text("Login",
                                 style: TextStyle(fontSize: 12,
                               fontWeight: FontWeight.w400,
                              color: Colors.blue)
                          
                          )),
                        ],
                      ),

                      // child: RichText(text:  const TextSpan(
                      //   text: 'Alredy have an account?  ',
                      //    style: TextStyle(fontSize: 12,
                      //     fontWeight: FontWeight.w400),
                      //     child: [
                            
                      //       Text(
                      //         text: "Login", 
                      //         style: TextStyle(fontSize: 12,
                      //         fontWeight: FontWeight.w400,
                      //         color: Colors.blue)
                      //       )
                      //     ]
                    
                      // ),
                      ),
                    // )
                  ],
                )
              
              ],

            ),
          ),
        ),
      ),
    );
  }
}
