import 'package:dio/dio.dart';

class NewsService{
  final Dio dio;

  NewsService(this.dio);

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
}