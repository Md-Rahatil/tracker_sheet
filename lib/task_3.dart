import 'package:flutter/material.dart';

class prob_3 extends StatelessWidget {
  const prob_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 189, 30),
        title: const Center(child: Text('Tracker Problem-3')),
      ),
      body: ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          return buildListItem(index + 1);
        },
      ),
    );
  }

  Widget buildListItem(int index) {
    return Container(
      width: double.infinity,
      color:
          index.isOdd
              ? const Color.fromARGB(240, 227, 214, 212)
              : const Color.fromARGB(255, 0, 0, 0),
      padding: const EdgeInsets.all(20),
      child: Text(
        'List Item $index',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          color:
              index.isOdd
                  ? Colors.black
                  : const Color.fromARGB(255, 243, 243, 243),
          fontWeight: index.isOdd ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    );
  }
}
