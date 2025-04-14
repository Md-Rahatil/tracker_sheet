import 'package:flutter/material.dart';

class prob_13 extends StatelessWidget {
  const prob_13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/Rahatil.png'),
            radius: 20,
          ),
        ),
        title: Text(
          'Tracker Problem-13',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // I will add functionality if needed
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontFamily: 'Roboto', fontSize: 60),
        ),
      ),
    );
  }
}
