import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  final String id;
  final String title;

  const CategoryMeals({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text("The Recipes For The Category"),
      ),
    );
  }
}
