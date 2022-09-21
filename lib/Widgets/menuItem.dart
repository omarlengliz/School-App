
import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({ Key? key, required this.image, required this.itemtext }) : super(key: key);
  final String? image,itemtext; 
  @override
  Widget build(BuildContext context) {
    return  Column(
                  children: [
                     SizedBox(
                      
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                         radius: 30.0,
                         
                                                    backgroundImage: AssetImage(
                                                       "$image"),
                                                    backgroundColor: Colors.white,
                                                  
                      ),
                    ),
                    const SizedBox(height: 6,),
                     Text("$itemtext",style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),)
                  ],
                );
  }
}