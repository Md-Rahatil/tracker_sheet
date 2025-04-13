import 'package:flutter/material.dart';

class prob_2 extends StatefulWidget {
  const prob_2({super.key});

  @override
  State<prob_2> createState() => _prob_2state();
}

class _prob_2state extends State<prob_2> {
  String displayText = 'Press the button below';

  void _updateText() {
    setState(() {
      displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tracker Problem-2')),
        backgroundColor: const Color.fromARGB(255, 51, 221, 65),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              displayText,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: _updateText,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 12,
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
