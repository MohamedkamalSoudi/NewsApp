import 'package:flutter/material.dart';
import 'package:weather_app/models/category_model.dart';
import 'category_card.dart';

class CateoriesListView extends StatelessWidget {
  const CateoriesListView({
    Key? key,
  }) : super(key: key);
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryimage: "assets/images/1.jpg", categoryName: "business"),
    CategoryModel(
        categoryimage: "assets/images/2.jpg",categoryName: "sports"),
    CategoryModel(
        categoryimage: "assets/images/3.jpg", categoryName: "sources"),
    CategoryModel(
        categoryimage: "assets/images/4.jpg", categoryName: "technology"),
    CategoryModel(
        categoryimage: "assets/images/3089.jpg",categoryName: "entertainment"),
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
              category: categories[index],
            );
          }),
    );
  }
}