// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Iconbox extends StatelessWidget {
  final IconData icon;
  const Iconbox({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Icon(
        icon,
        size: 50,
        color: const Color.fromARGB(255, 5, 92, 8),
      ),
    );
  }
}
