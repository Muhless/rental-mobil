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
                        2,
                        (index) {
                          Icon iconSpesifikasi;
                          String judulSpesifikasi;

                          switch (index) {
                            case 0:
                              iconSpesifikasi = Icon(
                                Icons.airline_seat_recline_extra,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Cihuy';
                              break;
                            case 1:
                              iconSpesifikasi = Icon(
                                Icons.format_list_bulleted_outlined,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Type';
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
                                        builder: (context) => MobilKeluarga()),
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
                                Icons.car_rental,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Mobil Keluarga';
                              break;
                            case 1:
                              iconSpesifikasi = Icon(
                                Icons.fire_truck,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Mobil Pickup';
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
                                        builder: (context) => MobilKeluarga()),
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
                                Icons.account_circle_rounded,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Profile';
                              break;
                            case 1:
                              iconSpesifikasi = Icon(
                                Icons.settings,
                                size: 40,
                                color: Colors.white,
                              );
                              judulSpesifikasi = 'Settings';
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
                                        builder: (context) => MobilKeluarga()),
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
    );
  }
}
