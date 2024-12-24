// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rental_mobil/widgets/warna.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(top: 38, left: 20),
            child: GestureDetector(
              onTap: () {
                _showExitConfirmationDialog(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Warna.sixthColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Konfirmasi"),
          content: Text(
            "Yakin ingin membatalkan perentalan?",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Tidak"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pop(context);
              },
              child: Text("Ya"),
            ),
          ],
        );
      },
    );
  }
}
