import 'package:flutter/material.dart';

class prob_14 extends StatelessWidget {
  const prob_14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tracker Problem- 14',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView.builder(
        itemCount: 17,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(
              color: const Color.fromARGB(255, 238, 24, 24),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Icon(
                Icons.delete,
                color: const Color.fromARGB(255, 249, 248, 248),
              ),
            ),
            secondaryBackground: Container(
              color: const Color.fromARGB(255, 255, 89, 17),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.edit,
                color: const Color.fromARGB(255, 242, 236, 236),
              ),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Message was $index deleted',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 222, 220, 220),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Message modify $index')),
                );
              }
            },
            child: ListTile(
              title: Text(
                'Sample Message $index',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Swipe'),
            ),
          );
        },
      ),
    );
  }
}
