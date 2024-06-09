import 'package:flutter/material.dart';
import 'package:weather_app/widgets/category_card.dart';
import 'package:weather_app/widgets/category_model.dart';

class CateoriesListView extends StatelessWidget {
  const CateoriesListView({
    Key? key,
  }) : super(key: key);
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryimage: "assets/images/1.jpg", categoryname: "clear"),
    CategoryModel(
        categoryimage: "assets/images/2.jpg",categoryname: "birthday"),
    CategoryModel(
        categoryimage: "assets/images/3.jpg", categoryname: "cloudy"),
    CategoryModel(
        categoryimage: "assets/images/4.jpg", categoryname: "rainy"),
    CategoryModel(
        categoryimage: "assets/images/3089.jpg",categoryname: "thunderstorm"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index]);
        },
      ),
    );
  }
}
