import 'package:flutter/material.dart';

class prob_12 extends StatelessWidget {
  const prob_12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Traker Problem-12',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 105),
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                blurRadius: 72.6,
                offset: Offset(6, 6),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Daffodil International University',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
