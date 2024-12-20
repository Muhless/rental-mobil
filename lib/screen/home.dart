// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80, left: 30, right: 30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hello,',
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
                        Icon(
                          Icons.logout,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        2,
                        (index) {
                          Icon iconSpesifikasi;
                          String judulSpesifikasi;
                          String keteranganSpesifikasi;

                          switch (index) {
                            case 0:
                              iconSpesifikasi = Icon(
                                Icons.airline_seat_recline_extra,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Kapasitas';
                              keteranganSpesifikasi = '4 Orang';
                              break;
                            case 1:
                              iconSpesifikasi = Icon(
                                Icons.grid_goldenratio,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Type';
                              keteranganSpesifikasi = 'Manual';
                              break;
                            default:
                              iconSpesifikasi = Icon(Icons.ac_unit);
                              judulSpesifikasi = 'Kapasitas';
                              keteranganSpesifikasi = '4 Orang';
                          }

                          return Container(
                            height: 150,
                            width: 150,
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
                                Text(
                                  keteranganSpesifikasi,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        2,
                        (index) {
                          Icon iconSpesifikasi;
                          String judulSpesifikasi;
                          String keteranganSpesifikasi;

                          switch (index) {
                            case 0:
                              iconSpesifikasi = Icon(
                                Icons.airline_seat_recline_extra,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Kapasitas';
                              keteranganSpesifikasi = '4 Orang';
                              break;
                            case 1:
                              iconSpesifikasi = Icon(
                                Icons.grid_goldenratio,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Type';
                              keteranganSpesifikasi = 'Manual';
                              break;
                            default:
                              iconSpesifikasi = Icon(Icons.ac_unit);
                              judulSpesifikasi = 'Kapasitas';
                              keteranganSpesifikasi = '4 Orang';
                          }

                          return Container(
                            height: 150,
                            width: 150,
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
                                Text(
                                  keteranganSpesifikasi,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        2,
                        (index) {
                          Icon iconSpesifikasi;
                          String judulSpesifikasi;
                          String keteranganSpesifikasi;

                          switch (index) {
                            case 0:
                              iconSpesifikasi = Icon(
                                Icons.airline_seat_recline_extra,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Kapasitas';
                              keteranganSpesifikasi = '4 Orang';
                              break;
                            case 1:
                              iconSpesifikasi = Icon(
                                Icons.grid_goldenratio,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Type';
                              keteranganSpesifikasi = 'Manual';
                              break;
                            default:
                              iconSpesifikasi = Icon(Icons.ac_unit);
                              judulSpesifikasi = 'Kapasitas';
                              keteranganSpesifikasi = '4 Orang';
                          }

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MobilKeluarga()),
                              );
                            },
                            child: Container(
                              height: 150,
                              width: 150,
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
                                  Text(
                                    keteranganSpesifikasi,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
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
    );
  }
}
