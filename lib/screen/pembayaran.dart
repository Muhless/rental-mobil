import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Pembayaran extends StatelessWidget {
  final List<String> imageList = [
    'assets/keluarga/honda.png',
    'assets/keluarga/brio.png',
    'assets/R.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Example'),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0, // Tinggi carousel
            autoPlay: true, // Putar otomatis
            enlargeCenterPage: true, // Memperbesar gambar di tengah
            aspectRatio: 16 / 9, // Rasio aspek gambar
            autoPlayInterval: Duration(seconds: 3), // Interval autoplay
            viewportFraction:
                0.8, // Fraksi viewport untuk melihat sebagian item di kiri/kanan
          ),
          items: imageList.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Pembayaran(),
  ));
}
