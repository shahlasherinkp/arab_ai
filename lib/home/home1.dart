import 'package:arab_ai/Socialmedia/email.dart';
import 'package:arab_ai/Socialmedia/socialmedia.dart';
import 'package:arab_ai/home/imagegen.dart';
import 'package:arab_ai/home/sidemenu.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeNew extends StatelessWidget {
  const HomeNew({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SideMenu()));
                          },
                          child: Image.asset(
                            'assets/images/shape.png',
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.65,
                          child: TextField(
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
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Looking for something',
                                hintStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300)),
                          ),
                        ),
                        Image.asset('assets/images/shape-2.png'),
                      ],
                    ),
                    
                  ),
                  const SizedBox(height: 50,),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                        AutoSizeText('Hello Username,',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ) ,),
                        SizedBox(height: 6,),
                        AutoSizeText(
                          'How  may  i  help  you ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                          AutoSizeText(
                          'today ?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                      ],),
                      
                      Image.asset('assets/images/robot.png'),
                      
                    ],),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      
                      AutoSizeText('Choose the type of content you would like to create \nfor now : ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400

                      ),),
                    ],
                  ),
                  Center(
                    child: LayoutBuilder(
                      builder: (context,constraints) {
                        return SizedBox(
                          height: 400,
                          width: clampDouble(0.50, 400, 600),
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 6,
                            mainAxisSpacing: 6,
                            children: [
                              GestureDetector(
                                onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ImageGeneration()));

                                },
                                child: Image.asset('assets/images/1.png')),
                              GestureDetector(
                                onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SocialMedia()));
                                },
                                child: Image.asset('assets/images/2.png')),
                              GestureDetector(
                                  onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Email()));
                                },
                                child: Image.asset('assets/images/3.png')),
                              GestureDetector(
                              
                                child: Image.asset('assets/images/4.png')),
                              Image.asset('assets/images/5.png'),
                              Image.asset('assets/images/6.png'),
                              Image.asset('assets/images/7.png'),
                              Image.asset('assets/images/8.png'),
                              Image.asset('assets/images/9.png'),
                          
                            ],
                          
                          ),
                        );
                      }
                    ),
                  ),
                  Container(
                    height: 350,
                    width: double.infinity,
                       decoration:  BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.lightBlue.withOpacity(0.65),
                    Colors.blue.withOpacity(0.35),
                    Colors.purple.withOpacity(0.35),
                    Colors.purple.withOpacity(0.50),
                  ],
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const AutoSizeText('Trial Plan', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                        Image.asset('assets/images/rocket_1 1.png')
                      ],
                    )
              
                  ],
                ),
              )

                  )
                  
                ],
                
                
                
              ),
            ],
          ),
          
          
          
        
        
      ),
    );
  }
}
