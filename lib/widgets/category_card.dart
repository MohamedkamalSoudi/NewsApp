// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/models/category_model.dart';
import 'package:weather_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key,required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              height: 85,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(category.categoryimage), fit: BoxFit.fill),
              ),
              child: Center(
                child: Text(
                  category.categoryName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}