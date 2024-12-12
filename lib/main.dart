// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 25)),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
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
              Text('cihuy')
            ],
          ),
        ),
      ),
    );
  }
}
