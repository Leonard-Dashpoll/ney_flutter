import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Norderney', style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(
            color: Colors.black
        ),
        titleSpacing: 0,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(Icons.settings)
          )
        ],
      ),
      drawer: const Drawer(),
      body: PageView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.blueAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_ferry),
              label: 'Ferry'
          )
        ],
      ),
    );
  }
}
