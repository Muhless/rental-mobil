// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Rental.in',
          ),
          backgroundColor: Color(0xFF007DFC),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Text(
                'Rental.In',
                style: (TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                )),
              ),
              Text('pilih mobil'),
              Image.asset('assets/img/R.png'),
              Text('Lambogini palabapakkau'),
              Text('cihuy'),
              ElevatedButton(
                onPressed: () {
                  print('cihuy');
                },
                child: Text('cihuy'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
