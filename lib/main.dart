// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/home.dart';
import 'package:rental_mobil/screen/login.dart';
import 'package:rental_mobil/screen/mobil/keluarga/keluarga.dart';
import 'package:rental_mobil/screen/profile.dart';
import 'package:rental_mobil/widgets/statusbar.dart';

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
  int _currentIndex = 1;

  // Daftar halaman yang dapat diakses
  final List<Widget> _pages = [
    ProfileScreen(),
    HomeScreen(),
    Login(),
    MobilKeluarga()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Menampilkan halaman sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah halaman
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
