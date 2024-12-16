import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final Function(String)
      onSearchChanged; // Callback untuk menangkap input pengguna
  final String hintText;

  const CustomSearchBar({
    Key? key,
    required this.onSearchChanged,
    this.hintText = 'Cari...',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearchChanged, // Fungsi yang dipanggil saat teks berubah
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
