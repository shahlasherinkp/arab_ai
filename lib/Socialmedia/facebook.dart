import 'package:arab_ai/Socialmedia/fbresult.dart';
import 'package:arab_ai/Socialmedia/socialmedia.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FaceBook extends StatefulWidget {
  const FaceBook({super.key});

  @override
  State<FaceBook> createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector
          (
              onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SocialMedia()));
                                },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Row(
            children: [
              Image.asset('assets/images/image 4.png'),
              SizedBox(
                width: 20,
              ),
              Text(
                'Facebook Status',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            AutoSizeText(
              'Please select the language :',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              child: DropdownButtonFormField(
                decoration:   InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10),
                      ),),
                value: _value,
                items: [
                  DropdownMenuItem(child: Text("English"), value: "-1",),
                  DropdownMenuItem(child: Text("Arabic"), value: "1",)
                ],
                onChanged:(V){},
              ),
            ),

            SizedBox(height: 25,),
               AutoSizeText(
              ' What would you like to post about ?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              height: 50,
              child: TextFormField(
                  decoration:  InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText:'Type here' ),
                      
              ),
            ),
            SizedBox(height: 25,),
              AutoSizeText(
              ' How do you want the caption to sound ??',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10,),
             SizedBox(
              height: 50,
               child: DropdownButtonFormField(
                decoration:   InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'select tone'),
                value: _value,
                hint: Text('Select tone', style: TextStyle(color: Colors.black),),
                items: 
                 [
                  DropdownMenuItem(child: Text(""), value: "-1",),
                  DropdownMenuItem(child: Text(""), value: "1",),
                ],
                onChanged:(V){},
                         ),
             ),
            SizedBox(height: 25,),
                    SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                          
                                   Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Result()));
                              
                      }, child: Text('Save Changes'))),
        
          ],
        ),
      ),
    );
  }
}
