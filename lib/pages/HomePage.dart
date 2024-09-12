// ignore_for_file: prefer_const_constructors
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
       body: Scaffold(
        body: Row(
          children: [
            Image.asset('lib/assets/emblem.png'),
            Text("Ministry of Coal Mines"),
          ],
        ),
       ),
    );
  }
}