// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        body: SingleChildScrollView(
            child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              color: Colors.lime,
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Icon(Icons.arrow_back,
                              size: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset('assets/pickup/pickup.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Info Mobil',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.emoji_people),
                          SizedBox(width: 5),
                          Text(
                            '4 Orang',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.door_back_door),
                          SizedBox(width: 5),
                          Text(
                            '4 Pintu',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.ac_unit),
                          SizedBox(width: 5),
                          Text(
                            'AC',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.gas_meter),
                          SizedBox(width: 5),
                          Text(
                            'Manual',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //tombol rental
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rp350.000'),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: Text('Rental Sekarang'),
                      ),
                    ],
                  ),
                )
                //
              ],
            ),
          ],
        )),
      ),
    );
  }
}
