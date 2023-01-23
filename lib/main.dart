import 'package:flutter/material.dart';

void main() {
  runApp(const Citiesaround());
}

class Citiesaround extends StatefulWidget {
  const Citiesaround({Key? key}) : super(key: key);

  @override
  State<Citiesaround> createState() => _CitiesaroundState();
}

class _CitiesaroundState extends State<Citiesaround> {
  List a = [
    'Container1',
    'Container2',
    'container3',
    'Container4',
    'Container5'
  ];
  List w = [
    AssetImage('images/london3.jpg'),
    AssetImage('images/Redfort1.jpg'),
    AssetImage('images/statue2.jpg'),
    AssetImage('images/vancu4.jpg'),
    AssetImage('images/Machu5.jpg')
  ];
  List e = ['London', 'Delhi', 'New york', 'Vancouver', 'Machu picchu'];
  List r = ['Britain', 'India', 'USA', 'Canada', ' Peru'];
  List x = [
    'population:6.73 mill',
    'population:139.34 mill',
    'population:33.19 mill',
    'population:3.82 mill',
    'population:3.3 mill'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 600),
              child: Text(
                'Cities Around world',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: a.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      child: Image(
                        image: w[index],
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          e[index],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          r[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          x[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
