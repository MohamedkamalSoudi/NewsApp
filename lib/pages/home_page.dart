// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/birthday_card.png"),
              ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(child: Text("Sports")),
        
      ),
    );
  }
}
