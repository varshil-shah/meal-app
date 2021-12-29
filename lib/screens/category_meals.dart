import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String categoryTitle = routeArgs["title"] as String;
    final String categoryId = routeArgs["id"] as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: const Center(
        child: Text("The Recipes For The Category"),
      ),
    );
  }
}
