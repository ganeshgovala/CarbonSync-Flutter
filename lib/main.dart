// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  // List of pages to show in the dashboard
  final List<Widget> _pages = [
    HomePage(),
    AnalyticsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Navigation'),
              decoration: BoxDecoration(
                color: Colors.blue,
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
              leading: Icon(Icons.settings),
              title: Text('Settings'),
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

// Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page', style: TextStyle(fontSize: 24)),
    );
  }
}

// Analytics Page
class AnalyticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Analytics Page', style: TextStyle(fontSize: 24)),
    );
  }
}

// Settings Page
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page', style: TextStyle(fontSize: 24)),
    );
  }
}
