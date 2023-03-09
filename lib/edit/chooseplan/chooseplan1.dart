import 'package:arab_ai/edit/chooseplan/payment.dart';
import 'package:arab_ai/home/sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({super.key});

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  bool isSwitched = false;

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Choose Your Plan',
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
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AutoSizeText('Monthly'),
                  CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (bool value) {},
                    thumbColor: Colors.white,
                    trackColor: Colors.lightBlue,
                  ),
                  const AutoSizeText('Annual'),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      // ignore: sort_child_properties_last
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.purple[300],
                            radius: 8,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const AutoSizeText(
                            'Trial',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Image.asset('assets/images/rocket_1 2.png'),
                          const AutoSizeText('Free',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          const AutoSizeText('2,500 words',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          const AutoSizeText('20 images',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      height: 250,
                      width: 175,

                      decoration: BoxDecoration(
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 250,
                  width: 175,
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const AutoSizeText(
                        'Basic',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          Image.asset('assets/images/clouds 1.png'),
                          Positioned(
                            top: 0,
                            left: 35,
                              child:
                                  Image.asset('assets/images/rocket_2 2.png')),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const AutoSizeText('9.99',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 3,
                      ),
                      const AutoSizeText('Monthly',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                          const SizedBox(height: 10,),
                      const AutoSizeText('2,500 words',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const AutoSizeText('20 images',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 250,
                  width: 175,
                    
                    child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const AutoSizeText(
                        'Pro',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          Image.asset('assets/images/stars 1.png'),
                          Positioned(
                            top: 0,
                            left: 35,
                              child:
                                  Image.asset('assets/images/rocket_3 1.png')),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const AutoSizeText('29.99',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 3,
                      ),
                      const AutoSizeText('Monthly',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                          const SizedBox(height: 10,),
                      const AutoSizeText('15,500 words',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const AutoSizeText('200 images',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
            // SizedBox(height: 20,),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PaymentScreen()));
                    }, child: const Text('Try it Now'))),
            const SizedBox(
              height: 10,
            ),
            RichText(
                text: const TextSpan(
                    text: 'Need more?  ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    children: [
                  TextSpan(
                      text: 'Contact us', style: TextStyle(color: Colors.blue))
                ]))
          ],
        ),
      ),
    ));
  }
}
