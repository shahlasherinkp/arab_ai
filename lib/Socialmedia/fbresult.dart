import 'package:arab_ai/Socialmedia/facebook.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
                onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FaceBook()));
                                },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            title: Row(
              children: [
                Image.asset('assets/images/image 4.png'),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Facebook Status',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
            )),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                   
                    //  Container(
                    //   height: 120,
                    //    child:  Column(
                    //      children: [
                    //        Card(
                            
                    //          child: Center(
                    //           child: Text('My heart goes out to all of those affected by \nthe devastating earthquake in Syria. Praying for \nsafety and strength during this difficult time. '),
                    //          ),
                             
                    //        ),
                         
                    //      ],
                    //    ),
                    //     decoration: BoxDecoration(
                    //       borderRadius:BorderRadius.circular(40),
                    //       color: Color.fromARGB(26, 216, 211, 211),
                    //       boxShadow:  [
                    //         BoxShadow(
                    //           color: Colors.white,
                    //           blurRadius: 20,

                    //         ),
                            
                    //       ]
                          
                    //     ),
                    //  ),
                     Container(
                      height: 150,
                      width: double.infinity,
                      
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(children: [
                          SizedBox(height: 20,),
                          AutoSizeText('My heart goes out to all of those affected by \nthe devastating earthquake in Syria. Praying for \nsafety and strength during this difficult time. '),
                          SizedBox(height: 35,),
                          SizedBox(
                            height: 20,
                            width:300 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('24 words', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),),
                                Image.asset('assets/images/ph_copy.png')
                              ],
                            ),
                          )
                             
                        ]),
                      ),
                     ),
                      SizedBox(height: 20,),
                      Container(
                      height: 150,
                      width: double.infinity,
                      
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(children: [
                          SizedBox(height: 20,),
                          AutoSizeText('My heart goes out to all of those affected by \nthe devastating earthquake in Syria. Praying for \nsafety and strength during this difficult time. '),
                          SizedBox(height: 35,),
                          SizedBox(
                            height: 20,
                            width:300 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('24 words', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),),
                                Image.asset('assets/images/ph_copy.png')
                              ],
                            ),
                          )
                             
                        ]),
                      ),
                     ),
                     SizedBox(height: 20,),
                     
                      Container(
                      height: 150,
                      width: double.infinity,
                      
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(children: [
                          SizedBox(height: 20,),
                          AutoSizeText('My heart goes out to all of those affected by \nthe devastating earthquake in Syria. Praying for \nsafety and strength during this difficult time. '),
                          SizedBox(height: 35,),
                          SizedBox(
                            height: 20,
                            width:300 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('24 words', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),),
                                Image.asset('assets/images/ph_copy.png')
                              ],
                            ),
                          )
                             
                        ]),
                      ),
                     ),
                         

                     
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }
}