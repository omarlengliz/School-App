import 'package:flutter/material.dart';
import 'package:testschool/Widgets/background.dart';
import 'package:testschool/Widgets/button.dart';

import '../Widgets/input.dart';

class SignIn extends StatelessWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                ClipPath(
                  clipper: BackgroundClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                       
                      color: Color(0xFF473f97),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset("assets/images/logo.png")
                          ),
                            const Text("Login" ,style: TextStyle(color: Colors.white , fontSize: 36),),
                            const SizedBox(height: 50,)
                      ],
                    ),
                  ),
                ),
              Container(
                                    height: MediaQuery.of(context).size.height * 0.5,

                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                  
                      const Input(textLabel: "Email", textHint: "Enter your email", isObscure: false),
                      const Input(textLabel: "Password", textHint: "Enter your Password", isObscure: true),
                    
                      const SizedBox(height: 25,),
                        Button( text: "Login", ontapFunction: (){
                        },),
                        const SizedBox(height: 20,),

                        const InkWell(
                          
                          child: Center(
                          child:   Text("Forgot Password ? " , style:TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 74, 120),
                            
                            ),),

                          ),
                        ),
                        
                        

                    ]),
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
