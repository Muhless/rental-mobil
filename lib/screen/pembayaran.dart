import 'package:flutter/material.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            child: const Text('cihuy'),
          ),
        ),
      ),
    );
  }
}
