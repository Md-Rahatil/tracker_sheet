import 'package:flutter/material.dart';

class prob_1 extends StatelessWidget {
  const prob_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Tracker Problem-1")),
        backgroundColor: const Color.fromARGB(255, 63, 207, 77),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
