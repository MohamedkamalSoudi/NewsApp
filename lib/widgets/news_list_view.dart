import 'package:flutter/material.dart';
import 'package:weather_app/models/article_model.dart';
import 'news_tile.dart';

class  NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({Key? key, required this.articles}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context ,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel:articles[index],
            ),
          );
        },
        childCount:articles.length,
      ),
      );
  }
}
