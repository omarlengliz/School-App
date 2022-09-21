import 'dart:ffi';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({ Key? key, required this.text, required this.ontapFunction }) : super(key: key);
  final String text; 
  final VoidCallback ontapFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 60,
                        padding: const EdgeInsets.only( left: 30 , right: 30),
                          child: Material(
                            borderRadius: BorderRadius.circular(36.0),
                            shadowColor: const Color.fromARGB(255, 250, 95, 134),
                            color: const Color(0xfffd3667),
                            elevation: 7,
                            child: GestureDetector(
                              onTap: ontapFunction,
                              child:  Center(
                                
                                child: Text(text ,style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20

                                ),),
                              ),
                            ),
                          ),
                        );
  }
}