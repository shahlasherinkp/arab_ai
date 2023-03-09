import 'package:arab_ai/Socialmedia/facebook.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(children: [
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/shape.png',
                ),
                SizedBox(
                  height: 40,
                  width: size.width * 0.7,
                  child: TextField(
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
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              AutoSizeText(
                'What do you want to create ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                GestureDetector
                (   onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FaceBook()));
                                },
                  child: Image.asset('assets/images/1-2.png')),
                Image.asset('assets/images/2-2.png'),
                Image.asset('assets/images/3-2.png'),
                Image.asset('assets/images/4-2.png'),
                Image.asset('assets/images/5-2.png'),
                Image.asset('assets/images/6-2.png'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
