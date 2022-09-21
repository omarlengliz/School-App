import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyhorizantalList extends StatelessWidget {
  final String courseHeadline, courseTitle,courseImage ; 
  final int startColor,endColor ; 

  const MyhorizantalList({ Key? key, required this.courseHeadline, required this.courseTitle, required this.courseImage, required this.startColor, required this.endColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(right: 10),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(begin: Alignment.topLeft,end: const Alignment(1, 0.0),colors: [
            Color(startColor),Color(startColor)
          ])
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:10.0 ,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(image:AssetImage("assets/images/back.png") ) 
                ),
              ),
              const Text("School is going on vacation next week " ,style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16
              ),),
            const SizedBox(height: 10,),
  const Text("2 march 2022  " ,style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.red

              ),),
            ],
          ),
        ),
      ),

      
    );
  }
}