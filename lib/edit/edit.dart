import 'dart:developer';

import 'package:arab_ai/home/sidemenu.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Edited extends StatefulWidget {
  const Edited({super.key});

  @override
  State<Edited> createState() => _EditedState();
}

class _EditedState extends State<Edited> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    'Edit Profile',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: (){
                       Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => SideMenu()));
                    },
                    child: Icon(Icons.clear))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  child: Image.asset('assets/images/Rectangle1.png'),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      'Name:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
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
                            borderSide: const BorderSide(
                                width: 1, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // errorBorder: OutlineInputBorder(
                          //   borderSide: const BorderSide(width: 1, color: Colors.red),
                          //   borderRadius: BorderRadius.circular(10),
                          // ),

                          labelText: 'Username'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AutoSizeText(
                      'E-mail adress:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        

                          labelText: 'You@email.com'),
                    ),
                         const SizedBox(
                      height: 20,
                    ),
                    const AutoSizeText(
                      'Occupation:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                          SizedBox(height: 10,),
                            TextFormField(
                              controller: occupationController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        

                          labelText: 'Enter your occupation'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AutoSizeText(
                      'Date of birth:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                          SizedBox(height: 10,),
                            TextFormField(
                              
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: Icon(Icons.calendar_today_outlined),
                        

                          labelText: 'DD/MM/YYY'),
                    ),
                    SizedBox(height: 35,),
                      SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                           

                       if(emailController.text.isEmpty){
                       SnackBar(content: Text("Please enter your email"),);
                       log("Please enter your email");
                       }

                      else if(isValidEmail(emailController.text) == false){
                          const SnackBar(content: Text("Please enter valid email"),);
                          log("Please enter valid email");
                      
                      }

                      else if(occupationController.text.isEmpty){
                        const SnackBar(content: Text("plese enter your occupation"),);
                      }
                      else{
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => SideMenu()));
                      }
                      }, child: Text('Save Changes'))),


                        
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
