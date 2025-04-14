import 'package:flutter/material.dart';

void main() {
  runApp(prob_17());
}

class prob_17 extends StatefulWidget {
  const prob_17({super.key});

  @override
  _prob_17State createState() => _prob_17State();
}

class _prob_17State extends State<prob_17> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tracker Problem-17',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor:
              isDarkMode
                  ? const Color.fromARGB(255, 245, 240, 240)
                  : const Color.fromARGB(255, 0, 0, 0),
          elevation: 4,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
                size: 100,
                color:
                    isDarkMode
                        ? const Color.fromARGB(255, 0, 0, 0)
                        : Colors.orange,
              ),
              SizedBox(height: 50),
              Text(
                isDarkMode ? 'Dark Mode ' : 'Light Mode ',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  width: 120,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        isDarkMode
                            ? Colors.black
                            : const Color.fromARGB(255, 3, 3, 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        left: isDarkMode ? 70 : 5,
                        right: isDarkMode ? 5 : 70,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.grey[100],
      ),
    );
  }
}
