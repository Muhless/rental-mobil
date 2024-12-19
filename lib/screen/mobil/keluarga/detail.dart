// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental_mobil/widgets/warna.dart';

class DetailMobilKeluarga extends StatefulWidget {
  const DetailMobilKeluarga({super.key});

  @override
  State<DetailMobilKeluarga> createState() => _DetailMobilKeluargaState();
}

class _DetailMobilKeluargaState extends State<DetailMobilKeluarga> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Warna.secondaryColor,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/keluarga/brio.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Warna.primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 30),
                      width: double.infinity,
                      child: Text(
                        'Spesifikasi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Rp150.000',
                            style: TextStyle(
                              color: Warna.thirdColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          '/12 jam',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: Row(
                          children: List.generate(
                            4,
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
                                margin: EdgeInsets.only(right: 15),
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
                    ),
                    SizedBox(height: 10),
                    Spacer(),
                    Container(
                      color: Warna.primaryColor,
                      margin: EdgeInsets.only(bottom: 20, left: 30, right: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMobilKeluarga(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size(400, 50),
                            backgroundColor: Warna.thirdColor),
                        child: Text(
                          "Rental Sekarang",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
