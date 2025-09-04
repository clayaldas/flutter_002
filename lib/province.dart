import 'package:flutter/material.dart';

class Province extends StatelessWidget {
  final String newProvince;
  const Province({super.key, required this.newProvince});

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Text(newProvince)));
  }
}
