import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/home.dart';
import 'package:rental_mobil/screen/mobil/kriteria.dart';
import 'package:rental_mobil/screen/pembayaran.dart';
import 'package:rental_mobil/widgets/statusbar.dart';
import 'package:rental_mobil/widgets/warna.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set transparent status bar with light icon brightness
    SystemUIHelper.setTransparentStatusBar(iconBrightness: Brightness.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    const HomeScreen(),
    KriteriaMobil(),
    Pembayaran(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _pages[_currentIndex], // This will change based on the current index
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Warna.secondaryColor,
        selectedItemColor: Warna.fifthColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        iconSize: 25.0, // Icon size can be adjusted as per requirement
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
            icon: Icon(Icons.car_rental),
            label: 'Mobil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Rental',
          ),
        ],
      ),
    );
  }
}
