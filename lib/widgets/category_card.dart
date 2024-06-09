// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key,required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.categoryimage),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
            child: Text(
          category.categoryname,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
