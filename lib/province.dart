import 'package:flutter/material.dart';

class Province extends StatelessWidget {
  final String newProvince;
  const Province({super.key, required this.newProvince});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Card(child: Text(newProvince)),
        onTap: () {
          print('Hizo un clic en el item: $newProvince');
        },
        onDoubleTap: () {
          print('Hizo un doble clic en el item: $newProvince');
        },
        onLongPress: () {
          print('Hizo un clic sostenido en el item: $newProvince ');
        },
      ),
    );
  }
}
