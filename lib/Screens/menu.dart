import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:testschool/Widgets/MenuItemWidget.dart';

import '../Widgets/menuItem.dart';

class Menu extends StatelessWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF473f97),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),

                                            height: 45,
                                            width: 45,
                                            child: const CircleAvatar(
                                              radius: 30.0,
                                              backgroundImage: AssetImage(
                                                  "assets/images/avatar.png"),
                                              backgroundColor: Colors.transparent,
                                            
                                              ),
                                            ),
                                          const SizedBox(width: 20,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Lengliz Omar',
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            '3IM4',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      const Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            
                                            child: Icon(Icons.close , color: Colors.white,size: 35,)
                                            ),
                                          ),
                                        ),
                                      
                                    ],
                                  ),
              ),
              const SizedBox(height: 20,),
              // ignore: prefer_const_literals_to_create_immutables
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                
                
                 const MenuItemWidget(image: "assets/images/dashboard.png", itemtext: "Dashboard"),
                 const MenuItemWidget(image: "assets/images/charge.png", itemtext: "Fee details"),
                
                 const MenuItemWidget(image: "assets/images/charge.png", itemtext: "Fee details")
                
                ,
              ],),
              const SizedBox(height: 20,),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                
                
                 const MenuItemWidget(image: "assets/images/dashboard.png", itemtext: "Dashboard"),
                 const MenuItemWidget(image: "assets/images/charge.png", itemtext: "Fee details"),
                
                 const MenuItemWidget(image: "assets/images/charge.png", itemtext: "Fee details")
                
                ,
              ],),
              const SizedBox(height: 20,),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                
                
                 const MenuItemWidget(image: "assets/images/dashboard.png", itemtext: "Dashboard"),
                 const MenuItemWidget(image: "assets/images/charge.png", itemtext: "Fee details"),
                
                 const MenuItemWidget(image: "assets/images/charge.png", itemtext: "Fee details")
                
                ,
              ],),
              const SizedBox(height: 20,),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                
                
                 const MenuItemWidget(image: "assets/images/dashboard.png", itemtext: "Dashboard"),
                
                
                
              ],),
              // ignore: unnecessary_const
              const Expanded(
                child: SizedBox(height: 50,child: Align(alignment: Alignment.center, child: Text("Logout" ,style: TextStyle(
                  color: Color.fromARGB(255, 255, 74, 120),
                  fontSize: 20
                ),)  ),),
              )
            ],
          ),
      ),
    );
  }
}