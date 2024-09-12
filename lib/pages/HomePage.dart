<<<<<<< HEAD
// ignore_for_file: prefer_const_constructors
=======
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carbonsync/pages/Graph1.dart';
>>>>>>> 6ea4f5ab8c5da9f4f5f307d5003da7c8fe9e5945
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
       body: Scaffold(
        body: Row(
          children: [
            Image.asset('lib/assets/emblem.png'),
            Text("Ministry of Coal Mines"),
          ],
        ),
       ),
    );
=======
        body: Expanded(
          child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
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
                      "Minister of Coal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          fontFamily: 'RobotoMono'),
                    ),
                    Text(
                      "Government of India",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontFamily: 'RobotoMono'),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(35),
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          "Ministery of Coal",
                          style: TextStyle(
                              fontSize: 35,
                              color: const Color.fromARGB(255, 134, 89, 185),
                              fontWeight: FontWeight.bold),
                        )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "The Ministry of Coal corporation India Limited (NLCIL). Other than Coal India Ltd. and Neyveli Lignite Corporation India Ltd., the Ministry of Coal also has a joint venture with Government of india The Ministry of Coal corporation India Limited (NLCIL). Other than Coal India Ltd. and Neyveli Lignite Corporation India Ltd., the Ministry of Coal also has a joint venture with Government of india",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  context()=>BarChartSample2();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 106, 89, 251)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Get Started",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("image"),
                  ),
                ),
              ],
            )
          ],
                ),
              ),
        ));
>>>>>>> 6ea4f5ab8c5da9f4f5f307d5003da7c8fe9e5945
  }
}
