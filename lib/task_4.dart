import 'package:flutter/material.dart';

class Task_4 extends StatelessWidget {
  const Task_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracker Problem-4'),
        backgroundColor: const Color.fromARGB(255, 51, 211, 11),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            const SizedBox(height: 40.0),

            Text(
              'My name is Rahatil Rahman',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 30.0),

            Text(
              'Currently I am studying in BSc. in CSE .',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 21, 63, 23),
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 25.0),

            Text(
              'Daffodil International University',
              style: TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.underline,
                decorationColor: const Color.fromARGB(255, 53, 21, 121),
                decorationThickness: 2.0,
                color: const Color.fromARGB(255, 7, 77, 134),
              ),
            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}
