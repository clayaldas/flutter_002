import 'package:flutter/material.dart';
import 'package:flutter_002/province.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> provinces = [
    'Napo',
    'Pichincha',
    'Cotopaxi',
    'Guayas',
    'Imbabura',
    'Tungurahua',
  ];

  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Segunda App',
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar del Scaffold')),

        //body: Center(child: Text('Body del Scaffold')),
        //body: Center(child: Province(newProvince: 'Manabi')),
        body: ListView.builder(
          //mainAxisAlignment: MainAxisAlignment.start,
          /*
          children: [
            Province(newProvince: 'Tungurahua'),
            Province(newProvince: 'Riobamba'),
            Province(newProvince: 'Manabi'),
            Province(newProvince: 'Loja'),
            Province(newProvince: 'Azuay'),
            Province(newProvince: 'Bolivar'),
          ],
          */
          itemCount: provinces.length,
          itemBuilder: (context, position) {
            return Province(newProvince: provinces[position]);
          },
          /*
          children: provinces
              .map((item) => Province(newProvince: item))
              .toList(),
              */
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //print('Presiono el botón');
            provinces.add('Nueva provincia');
            print('Cantidad de items: ${provinces.length}');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

// Clase (Widget) personalizado
/*
class Province extends StatelessWidget {
  const Province({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(child: Text('Tungurahua'));
  }
}
*/
