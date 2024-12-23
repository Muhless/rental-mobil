import 'package:flutter/material.dart';
import 'package:rental_mobil/widgets/warna.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(top: 38, left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Warna.sixthColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
