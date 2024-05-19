import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';

void main() {
 runApp( WeatherApp()); 
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}


