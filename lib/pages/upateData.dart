// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers


import 'package:carbonsync/supporting_widget/carbonfootprintform.dart';
import 'package:flutter/material.dart';

class Updatedata extends StatefulWidget {
  const Updatedata({super.key});

  @override
  State<Updatedata> createState() => _UpdatedataState();
}

class _UpdatedataState extends State<Updatedata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Update Data", style: TextStyle(
                      color: Colors.black,
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        CarbonFootprintForm(name: "Excavation"),
                        CarbonFootprintForm(name: "Transportation"),
                        CarbonFootprintForm(name: "Machinery"),
                        CarbonFootprintForm(name: "Others"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
