import 'package:flutter/material.dart';
import 'theme_color.dart';

class Task_1 extends StatelessWidget {
  const Task_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Tracker Problem-1")),
        backgroundColor: const Color.fromARGB(255, 52, 75, 4),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            color: const Color.fromARGB(255, 66, 6, 6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
