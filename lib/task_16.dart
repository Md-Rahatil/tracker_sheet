import 'dart:math';
import 'package:flutter/material.dart';

class prob_16 extends StatefulWidget {
  const prob_16({super.key});

  @override
  _prob_16State createState() => _prob_16State();
}

class _prob_16State extends State<prob_16> {
  double _width = 120;
  double _height = 120;
  Color _color = Color.fromARGB(255, 230, 230, 250);
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  String _shapeName = "Rose";

  final List<String> _flowerNames = [
    "Rose",
    "Tulip",
    "Lily",
    "Daisy",
    "Orchid",
    "Jasmine",
    "Sunflower",
    "Peony",
    "Marigold",
    "Lavender",
  ];
  final List<Color> _colors = [
    Color.fromARGB(255, 230, 230, 250),
    Color.fromARGB(255, 173, 216, 230),
    Color.fromARGB(255, 152, 251, 152),
    Color.fromARGB(255, 255, 228, 225),
    Color.fromARGB(255, 255, 218, 185),
    Color.fromARGB(255, 240, 255, 240),
    Color.fromARGB(255, 224, 255, 255),
    Color.fromARGB(255, 216, 191, 216),
    Color.fromARGB(255, 176, 224, 230),
    Color.fromARGB(255, 255, 182, 193),
  ];

  void _changeContainer() {
    setState(() {
      final random = Random();
      _width = random.nextInt(200).toDouble() + 100;
      _height = random.nextInt(200).toDouble() + 100;
      _color = _colors[random.nextInt(_colors.length)];
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble() + 20);
      _shapeName = _flowerNames[random.nextInt(_flowerNames.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tracker Problem-16',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              " $_shapeName",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _changeContainer,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                elevation: 5,
              ),
              child: Text(
                "Click",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 221, 220, 211),
    );
  }
}
