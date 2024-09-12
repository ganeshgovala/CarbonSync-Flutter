// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 20,
               child: Container(
                height: 430,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                
                child: Column(
                  children:[        
                    SizedBox(height: 50,),                             
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib/assets/emblem.png',height: 75,),
                          SizedBox(width: 8,),
                          Column(
                            children: [
                              Text("Ministry of",style: TextStyle(fontWeight: FontWeight.w600),),
                              SizedBox(width: 0,),                  
                              Text("COAL",style: TextStyle(fontSize: 28,color: const Color.fromARGB(255, 106, 31, 255),fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                       height: 60,
                       width: 300,
                      child: TextField(                  
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "User ID",
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 184, 102, 228))
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    SizedBox(
                       height: 60,
                       width: 300,
                      child: TextField(                  
                        decoration: InputDecoration(
                          
                          border: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 206, 143, 251),width: 3)),
                          labelText: "Password",
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 184, 102, 228))
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                   child:
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 52,
                        width: 180,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                                  colors: [const Color.fromARGB(255, 184, 127, 255), const Color.fromARGB(255, 101, 5, 255)], // Gradient colors
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                              ),
                               borderRadius: BorderRadius.circular(8.0), // Rounded corners
                           ),
                        child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                       ),
                    ),
                   ),
                  ],
                )
               ),
             )
          ],
        ),
      ),
    );
  }
}