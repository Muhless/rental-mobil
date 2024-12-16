// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rental_mobil/screen/home.dart';
import 'package:rental_mobil/screen/mobil/keluarga/detail.dart';
import 'package:rental_mobil/widgets/search.dart';

class MobilKeluarga extends StatefulWidget {
  const MobilKeluarga({super.key});

  @override
  State<MobilKeluarga> createState() => _MobilKeluargaState();
}

class _MobilKeluargaState extends State<MobilKeluarga> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff222831),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [SearchExampleScreen()],
                ),
                // list mobil 1
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailMobilKeluarga()),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icon/toyota.png',
                                  height: 50,
                                  width: 100,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Toyota',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  'Avanza',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/R.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
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
    // batas list
    //
  }
}

class SearchExampleScreen extends StatefulWidget {
  @override
  _SearchExampleScreenState createState() => _SearchExampleScreenState();
}

class _SearchExampleScreenState extends State<SearchExampleScreen> {
  // Data awal
  List<String> allData = [
    'Avanza',
    'Xenia',
    'Innova',
    'Fortuner',
    'Brio',
    'HRV'
  ];
  List<String> filteredData = [];

  @override
  void initState() {
    super.initState();
    filteredData = allData; // Set data awal
  }

  void filterSearch(String query) {
    final results = allData
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      filteredData = results; // Update hasil filter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Search Example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          CustomSearchBar(
            onSearchChanged: filterSearch, // Gunakan callback pencarian
            hintText: 'Cari nama mobil...',
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.directions_car),
                  title: Text(filteredData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
