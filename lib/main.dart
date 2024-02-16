import 'package:flutter/material.dart';
import 'package:ruralclap/screens/cart_screen.dart';
import 'package:ruralclap/screens/confirm_screen.dart';
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
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        CartScreen.routeName: (context) => const CartScreen(),
        ConfirmScreen.routeName: (context) => const ConfirmScreen(),
      },
    );
  }
}
