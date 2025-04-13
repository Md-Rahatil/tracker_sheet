import 'package:flutter/material.dart';

void main() {
  runApp(const Task_7());
}

class Task_7 extends StatelessWidget {
  const Task_7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pasta Snap Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  ImageGridScreen({super.key});

  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1612966893103-790e549a2ab1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBhc3Rhc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://media.istockphoto.com/id/1495698672/photo/prepared-spaghetti-pasta-with-fried-pork-meatballs-in-tomato-sauce-with-parsley-in-frying-pan.jpg?s=612x612&w=0&k=20&c=kjTHjI0EyY78sm7oXvbSnWgvYE7Vbz-__qup6TL6tPM=',
    'https://plus.unsplash.com/premium_photo-1701098716519-5aab40a5ce9f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGFzdGElMjBkaXNofGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1627286400579-027de47e9e73?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRvbWF0byUyMHBhc3RhfGVufDB8fDB8fHww',
    'https://media.istockphoto.com/id/1399179382/photo/traditional-italian-spaghetti-bolognese-on-a-dark-background.jpg?s=612x612&w=0&k=20&c=f3yo8eqzp0_59_0mb28Re503MAyu2SCklN2rWyezDEI=',
    'https://img.freepik.com/premium-photo/italian-spaghetti-bolognese-black-bowl-table-cherry-tomatoes_233226-534.jpg',
    'https://images.ricardocuisine.com/services/recipes/1x1/7260.jpg',
    'https://plus.unsplash.com/premium_photo-1664478291780-0c67f5fb15e6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3BhZ2hldHRpJTIwYm9sb2duZXNlfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1556761223-4c4282c73f77?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFzdGF8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1563379926898-05f4575a45d8?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBhc3RhfGVufDB8fDB8fHww',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task7:Pasta Snap Gallery'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 185, 98, 39),
        foregroundColor: const Color.fromARGB(255, 249, 226, 208),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.5),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 9.0, 
            mainAxisSpacing: 9.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(imageUrls[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}