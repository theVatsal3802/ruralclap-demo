import 'package:flutter/material.dart';
import 'package:ruralclap/screens/home_screen.dart';
import 'package:ruralclap/util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: const HomeScreen(),
    );
  }
}
