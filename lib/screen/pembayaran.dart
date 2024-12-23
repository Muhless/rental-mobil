import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rental_mobil/widgets/warna.dart';

class Pembayaran extends StatelessWidget {
  final List<String> imageList = [
    'assets/family/honda.png',
    'assets/family/brio.png',
    'assets/R.png',
  ];

  Pembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
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
              CarouselSlider(
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
            ],
          ),
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
