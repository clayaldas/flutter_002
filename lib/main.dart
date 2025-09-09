import 'package:flutter/material.dart';
import 'package:flutter_002/province.dart';

void main() {
  runApp(const MyApp(newProvince: 'Azuay'));
}

class MyApp extends StatefulWidget {
  final String newProvince; //late
  //late String newProvince = ''; //late

  const MyApp({super.key, required this.newProvince});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> provinces = [];

  @override
  void initState() {
    super.initState();
    print('Se ejecutó el evento: initState');
    // inicializar las variables que requieren mantener el estado
    provinces = [
      'Napo',
      'Pichincha',
      'Cotopaxi',
      'Guayas',
      'Imbabura',
      'Tungurahua',
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('Se ejecutó el evento: build');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Segunda App',
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar del Scaffold')),

        body: SizedBox(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //itemCount: provinces.length,
            itemBuilder: (context, position) {
              return Province(newProvince: position.toString());
            },
            /*
            children: provinces
                .map((item) => Province(newProvince: item))
                .toList(),
                */
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //print('Presiono el botón');
            setState(() {}); //build
            provinces.add(widget.newProvince);
            //print('Cantidad de items: ${provinces.length}');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
