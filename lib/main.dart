// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dio/dio.dart';

void main() {
  getGeneralNews();
  runApp(WeatherApp());
}

final dio = Dio();

void getGeneralNews() async{
      final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=2614f0b58fa24d9284026d981f75d9e3');
  print(response);

  }
  void getSportsNeews() async{
      final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=2614f0b58fa24d9284026d981f75d9e3');
  print(response);

  }

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
