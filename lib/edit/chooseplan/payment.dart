// ignore_for_file: prefer_const_constructors

import 'package:arab_ai/edit/chooseplan/chooseplan1.dart';
import 'package:arab_ai/home/sidemenu.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isSwitched = false;

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
                    'Payment',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: (){
                       Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => ChoosePlan()));
                    },
                    child: Icon(Icons.clear))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 250,
                width: double.infinity,

                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 15),
                      const AutoSizeText(
                        'CARD  HOLDER   FULL  NAME',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              AutoSizeText(
                                '123 ********8790',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset('assets/images/image 17.png')
                            ],
                          ),
                          Image.asset(
                            'assets/images/image 15.png',
                            height: 190,
                            width: 170,
                          )
                        ],
                      )
                    ],
                  ),
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF1171D8).withOpacity(0.6),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AutoSizeText(
                    'Set as a primary payment',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (bool value) {},
                    thumbColor: Colors.white,
                    activeColor: const Color(0xff3CC8EB),
                    trackColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 250,
                width: double.infinity,
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 15),
                      const AutoSizeText(
                        'CARD  HOLDER   FULL  NAME',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 80,
                              ),
                              AutoSizeText(
                                '123 ********8790',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset('assets/images/image 16.png')
                            ],
                          ),
                          Image.asset(
                            'assets/images/image 15.png',
                            height: 190,
                            width: 170,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFf3CC8EB),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AutoSizeText(
                    'Set as a primary payment',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (bool value) {},
                    thumbColor: Colors.white,
                    activeColor: const Color(0xff3CC8EB),
                    trackColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                         Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => SideMenu()));
                      }, child: const Text('Done'))),
            ],
          )),
    );
  }
}
