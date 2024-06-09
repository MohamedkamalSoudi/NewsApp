import 'package:flutter/material.dart';
import 'package:weather_app/widgets/category_card.dart';
import 'package:weather_app/widgets/category_model.dart';

class CateoriesListView extends StatelessWidget {
  const CateoriesListView({
    Key? key,
  }) : super(key: key);
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryimage: "assets/images/clear.png", categoryname: "clear"),
    CategoryModel(
        categoryimage: "assets/images/birthday_card.png",
        categoryname: "birthday"),
    CategoryModel(
        categoryimage: "assets/images/cloudy.png", categoryname: "cloudy"),
    CategoryModel(
        categoryimage: "assets/images/rainy.png", categoryname: "rainy"),
    CategoryModel(
        categoryimage: "assets/images/thunderstorm.png",
        categoryname: "thunderstorm"),
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
