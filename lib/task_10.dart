import 'package:flutter/material.dart';

class prob_10 extends StatefulWidget {
  const prob_10({super.key});

  @override
  State<prob_10> createState() => _prob_10State();
}

class _prob_10State extends State<prob_10> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [HomePage(), SearchPage(), ProfilePage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Task_10')),
        backgroundColor: const Color.fromARGB(255, 134, 28, 107),
      ),
      // here i have to call it from the body
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        //also select the current index
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 254, 219, 219),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/IMG01.jpg'),
            const SizedBox(height: 20),
            Text(
              'Professional Makeup Brush Set',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/IMG02.jpg'),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Mac Cosmetices', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/IMG03.jpg'),
          SizedBox(height: 20),
          Text("Mahira's Makeover", style: TextStyle(fontSize: 22.5)),
        ],
      ),
    );
  }
}
