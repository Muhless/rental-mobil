import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/auth/login.dart';
import 'package:rental_mobil/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
