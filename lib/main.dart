import 'package:flutter/material.dart';
import 'package:ney_flutter/screens/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ney',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen()
      },
    );
  }
}

