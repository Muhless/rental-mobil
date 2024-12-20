// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/home.dart';
import 'package:rental_mobil/screen/login.dart';
import 'package:rental_mobil/screen/mobil/keluarga/list.dart';
import 'package:rental_mobil/screen/profile.dart';
import 'package:rental_mobil/widgets/statusbar.dart';
import 'package:rental_mobil/widgets/warna.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemUIHelper.setTransparentStatusBar(iconBrightness: Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MainNavigation(), // Menggunakan kerangka navigasi utama
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ProfileScreen(),
    Login(),
    MobilKeluarga()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Warna.primaryColor,
        selectedItemColor: Warna.thirdColor,
        unselectedItemColor: Warna.secondaryColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
        ],
      ),
    );
  }
}
