// ignore_for_file: library_private_types_in_public_api, sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:carbonsync/firebase_options.dart';
import 'package:carbonsync/pages/AnalyticsPage.dart';
import 'package:carbonsync/pages/HomePage.dart';
import 'package:carbonsync/pages/LoginPage.dart';
import 'package:carbonsync/pages/upateData.dart';
import 'package:carbonsync/pages/Graph1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarbonSync',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    AnalyticsPage(),
    Updatedata(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.white)
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('lib/assets/emblem.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ministry of\nCoal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    fontFamily: 'RobotoMono',
                                    height: 1.2,
                                  ),
                              ),
                              Text(
                                "Government of India",
                                style: TextStyle(
                                  color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: 'RobotoMono'),
                              ),
                            ],
                          )
                        ],
                      ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 45, 45, 45),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text('Analytics'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Update Data'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex], // Show the selected page
    );
  }
}
