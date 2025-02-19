import 'package:flutter/material.dart';
import 'package:google_map_app/map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maps',
      home: MapView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
