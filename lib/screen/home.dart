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
  double _marginLeft = 30;

  @override
  Widget build(BuildContext context) {
    SystemUIHelper.setTransparentStatusBar(iconBrightness: Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Warna.primaryColor,
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollUpdateNotification) {
              if (scrollNotification.metrics.pixels > 0) {
                setState(() {
                  _marginLeft = 0;
                });
              } else {
                setState(() {
                  _marginLeft = 30;
                });
              }
            }
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Hello,',
                            style: TextStyle(
                                fontSize: 25,
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
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            Icon(
                              Icons.account_circle,
                              size: 40,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) {
                        final images = [
                          'assets/icons/car-rental.png',
                          'assets/icons/car-key.png',
                          'assets/icons/calendar.png',
                          'assets/icons/valet.png'
                        ];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MobilKeluarga(),
                              ),
                            );
                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
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
                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
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
                              case 2:
                                iconSpesifikasi = Icon(
                                  Icons.door_back_door,
                                  size: 40,
                                  color: Colors.white,
                                );
                                judulSpesifikasi = 'Kapasitas';
                                keteranganSpesifikasi = '4 Orang';
                                break;
                              case 3:
                                iconSpesifikasi = Icon(
                                  Icons.ac_unit,
                                  size: 40,
                                  color: Colors.white,
                                );
                                judulSpesifikasi = 'Kapasitas';
                                keteranganSpesifikasi = '4 Orang';
                                break;
                              default:
                                iconSpesifikasi = Icon(Icons.ac_unit);
                                judulSpesifikasi = 'Kapasitas';
                                keteranganSpesifikasi = '4 Orang';
                            }

                            return Container(
                              height: 150,
                              width: 150,
                              // margin: EdgeInsets.only(right: 15),
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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 40),
                          child: Text(
                            'Type Mobil',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ],
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
