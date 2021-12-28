import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Recipes"),
      ),
      body: const Center(
        child: Text("The Recipes For The Category"),
      ),
    );
  }
}
