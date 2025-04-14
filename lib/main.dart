import 'package:flutter/material.dart';
import 'package:flutter_practice/task_10.dart';
import 'package:flutter_practice/task_19.dart';
import 'package:flutter_practice/task_6.dart';
import 'package:flutter_practice/task_8.dart';
import 'package:flutter_practice/task_9.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),

      // home: const prob_1(),
      // home: const prob_2(),
      // home: const prob_3(),
      // home: const prob_4(),
      // home: const prob_5(),
      // home: const prob_6(),
      // home: const prob_7(),
      // home: const prob_8(),
      // home: const prob_9(),
      // home: const prob_10(),
      // home: const prob_11(),
      // home: const prob_12(),
      // home: const prob_13(),
      // home: const prob_14(),
      // home: const prob_15(),
      // home: const prob_16(),
      // home: const prob_17(),
      // home: const prob_18(),
      home: const prob_19(),
    );
  }
}
