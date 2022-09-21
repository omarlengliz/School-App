import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({ Key? key, required this.textLabel, required this.textHint, required this.isObscure }) : super(key: key);
  final String textLabel ,textHint; 
  final bool isObscure ;
  @override
  Widget build(BuildContext context) {
    return  Container(
                        padding: const EdgeInsets.only(top: 20 , left: 30 , right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start
                          ,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(textLabel ,style: const TextStyle(
                              fontSize: 16 , 
                              fontWeight: FontWeight.normal
                            ),),
                            TextField(
                                                                style: const TextStyle(fontSize: 24.0, height: 1.0, color: Colors.black),
                          obscureText: isObscure,
                              decoration: InputDecoration(
                                
                                  border: InputBorder.none,
                                  hintText: textHint,
                                  hintStyle: TextStyle(color: Colors.grey[400])),
                            ),
                          ],
                        ),
                      );
  }
}