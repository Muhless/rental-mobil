// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/mobil/keluarga/detail.dart';
import 'package:rental_mobil/screen/mobil/keluarga/list.dart';
import 'package:rental_mobil/widgets/statusbar.dart';
import 'package:rental_mobil/widgets/warna.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemUIHelper.setTransparentStatusBar(iconBrightness: Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Warna.primaryColor,
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65, left: 30, right: 30),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Halo,',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Budiono Siregar',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.logout,
                              size: 20,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // Proses logout
                              // _logout(context);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          1,
                          (index) {
                            String judulSpesifikasi;
                            String tagline;

                            switch (index) {
                              case 0:
                                judulSpesifikasi = 'Pilihan Terbaik ';
                                tagline = 'untuk Setiap Perjalanan';
                                break;

                              default:
                                judulSpesifikasi = 'Kapasitas';
                                tagline = 'cihuy';
                            }

                            return GestureDetector(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MobilKeluarga()),
                                    );
                                    break;
                                  case 1:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailMobilKeluarga()),
                                    );
                                    break;
                                  default:
                                    Navigator.pop(
                                      context,
                                    );
                                }
                              },
                              child: Container(
                                height: 100,
                                width: 295,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/bg1.jpg'),
                                      fit: BoxFit.cover),
                                  color: Warna.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          judulSpesifikasi,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Warna.primaryColor),
                                        ),
                                        Text(
                                          tagline,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Warna.primaryColor),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_right_outlined,
                                          color: Warna.primaryColor,
                                          size: 50,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          2,
                          (index) {
                            Icon iconSpesifikasi;
                            String judulSpesifikasi;

                            switch (index) {
                              case 0:
                                iconSpesifikasi = Icon(
                                  Icons.list_alt,
                                  size: 40,
                                  color: Colors.white,
                                );
                                judulSpesifikasi = 'Rental';
                                break;
                              case 1:
                                iconSpesifikasi = Icon(
                                  Icons.car_crash,
                                  size: 40,
                                  color: Colors.white,
                                );
                                judulSpesifikasi = 'Daftar Mobil';
                                break;
                              default:
                                iconSpesifikasi = Icon(Icons.ac_unit);
                                judulSpesifikasi = 'Kapasitas';
                            }

                            return GestureDetector(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MobilKeluarga()),
                                    );
                                    break;
                                  case 1:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailMobilKeluarga()),
                                    );
                                    break;
                                  default:
                                    Navigator.pop(
                                      context,
                                    );
                                }
                              },
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Warna.fourthColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    iconSpesifikasi,
                                    const SizedBox(height: 15),
                                    Text(
                                      judulSpesifikasi,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 17,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          2,
                          (index) {
                            Icon iconSpesifikasi;
                            String judulSpesifikasi;

                            switch (index) {
                              case 0:
                                iconSpesifikasi = Icon(
                                  Icons.history,
                                  size: 40,
                                  color: Colors.white,
                                );
                                judulSpesifikasi = 'Riwayat';
                                break;
                              case 1:
                                iconSpesifikasi = Icon(
                                  Icons.help_center,
                                  size: 40,
                                  color: Colors.white,
                                );
                                judulSpesifikasi = 'Bantuan';
                                break;
                              default:
                                iconSpesifikasi = Icon(Icons.ac_unit);
                                judulSpesifikasi = 'Kapasitas';
                            }

                            return GestureDetector(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MobilKeluarga()),
                                    );
                                    break;
                                  case 1:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailMobilKeluarga()),
                                    );
                                    break;
                                  default:
                                    Navigator.pop(
                                      context,
                                    );
                                }
                              },
                              child: Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Warna.fourthColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    iconSpesifikasi,
                                    const SizedBox(height: 15),
                                    Text(
                                      judulSpesifikasi,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 17,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
