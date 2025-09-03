import 'package:flutter/material.dart';
import 'package:flutter_002/province.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Segunda App',
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar del Scaffold')),
        //body: Center(child: Text('Body del Scaffold')),
        body: Center(child: Province(newProvince: 'Manabi')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Presiono el botón');
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
