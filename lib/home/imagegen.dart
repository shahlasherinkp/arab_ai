import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ImageGeneration extends StatefulWidget {
   ImageGeneration({super.key});

  @override
  State<ImageGeneration> createState() => _ImageGenerationState();
}

class _ImageGenerationState extends State<ImageGeneration> {
  final TextEditingController imageTextController = TextEditingController();

  final List<String> featuesList= [
    'portrait',
    'illustion',
    'concept out',
    'textture',
    'impression',
    'digital art',
    'V-ray',
    'portrait',
    'full hd',
    'Hd',
    '4k',
    '8k',
    'monochromatic',
    'ultrarealistic',
    'soft ligting',
    '3d',
    'asthetic',
    'Gilter',
    'Hight quality',
    'smooth',
    'digital art',
    'cinematic ligting',
    'rich colors',
    'impression',
    'cartoon',
    'Monochromatic'
    'colorful',
    'V-Ray',
    'Wallpaper',
    'Artwork',
    'Photography',
    '3D',
    'Background',
    'Texture',
    'Aesthetic',
    'Cartoon',
    'Portrait',
    'Illustration',
    'Concept art',
    

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 4,
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/shape.png',
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.65,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.grey),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.lightBlue),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.grey),
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
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            // width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      'Explore AI-generated images',
                                      style: TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    AutoSizeText(
                                      'Describe what is on your mind. For best results, be \nspecific..',
                                      style: TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      child: TextFormField(
                                        controller: imageTextController,
                                        maxLines: 5,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 1, color: Colors.grey),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            hintText:
                                                'Example a car flying in the space'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Need some help',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Image.asset('assets/images/Frame 1.png'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                 
                  SizedBox(height: 15,),
                  
                  
                  
                  Wrap(
                    spacing: 18,
                    runSpacing: 4,
                    children: [
                        for(var i in featuesList)
                        InkWell(
                          onTap: (){
                            setState(() {
                              imageTextController.text = i;
                            });
                          },
                          child: Chip(
                          backgroundColor: Color.fromARGB(255, 212, 212, 212),
                          label: Text(i),
                                              ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ///Generate image button
          // Container(
          //   height: 150,
          //   color: Colors.white,
          //   child: Container(
          //    
              
          //     child: ElevatedButton(
                
          //       onPressed: (
                
          //     ){},
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          //      child: Text('Generate Image'),
              
          //     ),
          //   ),
          // )
          SizedBox(height: 10,),
          Card(
            elevation: 10,
            child: Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child:  ElevatedButton(
                         onPressed: (
                        
                      ){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFF5F5F5)),
                        padding: MaterialStateProperty.all(EdgeInsets.zero)
                        
                        ),
                       child: Text('Generate Image', style: TextStyle(
                        color: Color.fromARGB(255, 132, 132, 132),
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                       ),),
                      
                     ),
                  
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
