// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500, 
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    color: Colors.blue,
                    child: Center(child: Text("graph1")),
                  ),
                  Container(
                    height: 500, 
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    color: Colors.blue,
                    child: Center(child: Text("graph1")),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500, 
                    width: MediaQuery.of(context).size.width / 1.05,
                    color: Colors.blue,
                    child: Center(child: Text("Graph 3")),
                  )
                ],
              )
            ],
           ),
         ),
       ),
    );
  }
}