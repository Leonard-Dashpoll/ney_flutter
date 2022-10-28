import 'package:flutter/material.dart';
import 'package:ney_flutter/screens/ferry.screen.dart';
import 'package:ney_flutter/screens/home.screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
      body: PageView(
        children: const [
          HomeScreen(),
          FerryScreen()
        ],
      ),
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
