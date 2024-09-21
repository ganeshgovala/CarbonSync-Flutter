// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carbonsync/pages/AnalyticsPage.dart';
import 'package:carbonsync/pages/Calculations.dart';
import 'package:carbonsync/pages/Graph1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 770,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('lib/assets/background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib/assets/emblem.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ministry of Coal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    fontFamily: 'RobotoMono'),
                              ),
                              Text(
                                "Government of India",
                                style: TextStyle(
                                  color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    fontFamily: 'RobotoMono'),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Revolutionizing Carbon Management\nfor Coal Mines",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 800,
                        child: Text("Empowering Indian coal mines with advanced tools for accurate carbon emission tracking " +
                             "strategic reduction, and sustainable practices. Achieve carbon neutrality with data-driven insights" +
                             "and scalable solutions tailored to your needs.",
                             style: TextStyle(
                              color: Colors.grey[200],
                              fontSize: 20,
                             ),
                             textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticsPage()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(169, 255, 82, 249),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: Text("Analytics", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
