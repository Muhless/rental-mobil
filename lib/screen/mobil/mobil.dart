import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/home.dart';

class ListMobil extends StatefulWidget {
  const ListMobil({super.key});

  @override
  State<ListMobil> createState() => _ListMobilState();
}

class _ListMobilState extends State<ListMobil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: null,
        ),
      ),
    ));
  }
}
