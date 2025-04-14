import 'package:flutter/material.dart';

class prob_11 extends StatelessWidget {
  const prob_11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tracker Problem-11',
            style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 130, 174, 206),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Image.asset('assets/bike.jpeg'),
              Text("\nKTM RC 390\n\n\n\n", style: TextStyle(fontSize: 20)),

              Image.asset('assets/bike2.jpeg'),
              SizedBox(height: 26),
              Text("R15", style: TextStyle(fontSize: 26)),
            ],
          ),
        ),
      ),
    );
  }
}
