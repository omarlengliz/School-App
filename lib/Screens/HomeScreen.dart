// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:testschool/Widgets/background.dart';
import 'package:testschool/Widgets/checkbox.dart';
import 'package:testschool/Widgets/horizantal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipPath(
                          clipper: BackgroundClipper(),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xFF473f97),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/menu.png"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const SizedBox(
                                      height: 13,
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
                                      height: 2,
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
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: const AssetImage(
                                            "assets/images/avatar.png"),
                                        backgroundColor: Colors.transparent,
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 35),
                                          height: 13,
                                          width: 13,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                "Notice Board",
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xFF473f97)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 150,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return const MyhorizantalList(
                                          startColor: 0xFF9288E4,
                                          endColor: 0xFF534EA7,
                                          courseHeadline: "Recomanded",
                                          courseTitle:
                                              'UI/UX DESIGN \nBEGINNER',
                                          courseImage: "assets/images/back.png",
                                        );
                                      })),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Homework",
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xFF473f97)),
                              ),
                             const SizedBox(height: 20,),
                              Row(
                                children: [
                                  
                                  RoundCheckBox(
                                    size: 30,
                                    checkedColor: const Color(0xFF473f97),
                                    onTap: (selected) {},
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                   
                                    Text(
                                      'Learn chapter 5 with easy one',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text(
                                      'English / today ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                             const SizedBox(height: 20,),
                              Row(
                                children: [
                                  
                                  RoundCheckBox(
                                    size: 30,
                                    checkedColor: const Color(0xFF473f97),
                                    onTap: (selected) {},
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                   
                                    Text(
                                      'Learn chapter 5 with easy one',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text(
                                      'English / today ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                             const SizedBox(height: 20,),
                              Row(
                                children: [
                                  
                                  RoundCheckBox(
                                    size: 30,
                                    checkedColor: const Color(0xFF473f97),
                                    onTap: (selected) {},
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                   
                                    Text(
                                      'Learn chapter 5 with easy one',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text(
                                      'English / today ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                             const SizedBox(height: 20,),
                              Row(
                                children: [
                                  
                                  RoundCheckBox(
                                    size: 30,
                                    checkedColor: const Color(0xFF473f97),
                                    onTap: (selected) {},
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                   
                                    Text(
                                      'Learn chapter 5 with easy one',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text(
                                      'English / today ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                             const SizedBox(height: 20,),
                              Row(
                                children: [
                                  
                                  RoundCheckBox(
                                    size: 30,
                                    checkedColor: const Color(0xFF473f97),
                                    onTap: (selected) {},
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                   
                                    Text(
                                      'Learn chapter 5 with easy one',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text(
                                      'English / today ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  
                                  RoundCheckBox(
                                    size: 30,
                                    checkedColor: const Color(0xFF473f97),
                                    onTap: (selected) {},
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                   
                                    Text(
                                      'Exercice trigonometry 1st topic ',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text(
                                      'Maths / today ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                    ]))));
  }
}
