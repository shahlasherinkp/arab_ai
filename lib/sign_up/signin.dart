import 'dart:developer';

import 'package:arab_ai/home/home1.dart';
import 'package:arab_ai/sign_up/email/signup.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  
  
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: 
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Center(
              child: Column(children: [
                const SizedBox(
                  height: 35,
                ),
                Image.asset(
                    '/Users/mac/Desktop/sherin/arab_ai/assets/images/Group2.png'),
                const SizedBox(
                  height: 30,
                ),
                const AutoSizeText(
                  'Let’s sign you in',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                const AutoSizeText(
                  'Welcome back, you have been missed !',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    AutoSizeText(
                      'E-mail Address :',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Form(
                
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  children: const [
                    AutoSizeText(
                      'Password:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                
                   Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    AutoSizeText(
                      'Forget Password ?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height:40,
                ), Container(
                height: 45,
                width: double.infinity,
                 decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.lightBlue,
                    Colors.blue,
                    
                  ],
                ),
              ),
                child: ElevatedButton(
                  child: const Text("Login"),
                  onPressed: () {
                    

                      if(emailController.text.isEmpty){
                       const SnackBar(content: Text("Please enter your email"),);
                       log("Please enter your email");
                      }

                      else if(isValidEmail(emailController.text) == false){
                          const SnackBar(content: Text("Please enter valid email"),);
                      }

                      else if(passwordController.text.isEmpty){
                        const SnackBar(content: Text("Please enter your password"),);
                      }

                      else if(passwordController.text.length < 8){
                        const SnackBar(content: Text("Passoword must be more than 8 characters."),);
                      }

                      else{
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeNew()));
                      }

                    
                  },
                  
                ),
              ),
              const SizedBox(height: 50,),
              const AutoSizeText('- OR -',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 20,),
              Image.asset('assets/images/socialmedia.png'),
              SizedBox(height: 90,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('Dont have an account? ', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),),
                  GestureDetector(
                    onTap: () {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (context) => const SignupScreen()));
                      
                    },
                    child: Text('Signup' , 
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                    ),
                  )
                ],
              )

                
              ]),
              
            ),
          ),
        
      
    );
  }


    bool isValidEmail(String email){
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(email);
  }


}
