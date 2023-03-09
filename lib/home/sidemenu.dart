import 'package:arab_ai/edit/chooseplan/chooseplan1.dart';
import 'package:arab_ai/edit/edit.dart';
import 'package:arab_ai/home/home1.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                AutoSizeText(
                  'Menu',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                GestureDetector
                (
                  onTap: () {
                     Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => HomeNew()));
                  },
                  child: Icon(Icons.clear))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset('assets/images/Rectangle.png'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const AutoSizeText(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const AutoSizeText(
                    '+971 123456789',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Edited()));
                      },
                      child: const Text('Edit Profile',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        side: const BorderSide(color: Colors.grey),
                        
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/shape-3.png'),
                          const SizedBox(width:18),
                          const Text('Home',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ),
                      const SizedBox(height: 25,),
                        Row(
                        children: [
                          Image.asset('assets/images/shape-4.png'),
                          const SizedBox(width:18),
                          const Text('History',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ),
                       const SizedBox(height: 25,),
                        Row(
                        children: [
                          Image.asset('assets/images/shape-5.png'),
                          const SizedBox(width:18),
                          const Text('Saved',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ),
                       const SizedBox(height: 25,),
                        Row(
                        children: [
                          Image.asset('assets/images/shape-8.png'),
                          const SizedBox(width:18),
                          const Text('Plans',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ),
                       const SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: GestureDetector(
                            onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(
                             builder: (context) => ChoosePlan()));
                            },
                            child: Row(
                            children: [
                              Image.asset('assets/images/shape-6.png'),
                              const SizedBox(width:18),
                              const Text('Payment',style: 
                              TextStyle(fontSize: 17,
                              fontWeight: FontWeight.w400),)
                            ],
                            
                            
                                                ),
                          ),
                        ),
                       const SizedBox(height: 50,),
                        Row(
                        children: [
                          Image.asset('assets/images/shape-7.png'),
                          const SizedBox(width:18),
                          const Text('Settings',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ), const SizedBox(height: 25,),
                        Row(
                        children: [
                          Image.asset('assets/images/shape-8.png'),
                          const SizedBox(width:18),
                          const Text('Languages',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ),
                       const SizedBox(height: 25,),
                        Row(
                        children: [
                          Image.asset('assets/images/Vector-3.png'),
                          const SizedBox(width:18),
                          const Text('Log Out',style: 
                          TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w400),)
                        ],
                        
                        
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
